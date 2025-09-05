#!/usr/bin/env python3
"""
MIP main runner that parses a strict underscore schema:

    version_solver_objective_seed_presolve_sym_warm_cuts[_DEBUG]

Where:
  - version: base | i!=j | i<j | pre
      * base,i!=j,i<j -> use v_1_2_3.py (call build_model)
      * pre -> use v_4.py (call build_model_with_permutations or run script)
  - solver: CBC | GLPK
  - objective: feas -> "feasible", opt -> "balanced"
  - seed: integer or 'n' (no seed)
  - presolve: True|False (default True)
  - sym: string with letters A,B,C,D or "" (only used by v_1_2_3)
  - warm: warm-start string (values per your spec)
  - cuts: True|False (default False)
  - optional DEBUG flag (True|False)

This script imports the appropriate version module and calls the expected
entrypoint function (build_model or build_model_with_permutations). The
result is merged into the JSON file at --out (or res/MIP/{n}.json by default).
"""

import argparse
import importlib.util
import json
import os
import sys
import traceback
from typing import Optional, Tuple, Dict, Any

# -----------------------
# Helpers
# -----------------------

def bool_from_token(tok: Optional[str], default: bool) -> bool:
    """Convert textual token to boolean; if tok is None return default."""
    if tok is None:
        return default
    t = str(tok).strip().lower()
    if t in ("1","true","t","y","yes"):
        return True
    if t in ("0","false","f","n","no"):
        return False
    return default

def try_int(tok: Optional[str]) -> Optional[int]:
    """Return int if tok is integer-like, else None."""
    if tok is None:
        return None
    try:
        return int(tok)
    except Exception:
        return None

def import_module_from_path(path: str):
    """Dynamically import a python file as module given its path."""
    if not os.path.isfile(path):
        raise FileNotFoundError(path)
    name = os.path.splitext(os.path.basename(path))[0]
    spec = importlib.util.spec_from_file_location(name, path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod

def write_result(out_path: str, key_name: str, result: Dict[str,Any]) -> None:
    """Merge result under key_name into JSON file at out_path."""
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    old = {}
    if os.path.exists(out_path):
        try:
            with open(out_path, "r") as f:
                old = json.load(f)
                if not isinstance(old, dict):
                    old = {}
        except Exception:
            old = {}
    old.update({key_name: result})
    with open(out_path, "w") as f:
        json.dump(old, f, indent=2)

def default_result() -> Dict[str,Any]:
    """Return fallback result matching assignment spec."""
    return {"time": 300, "optimal": False, "obj": None, "sol": []}

# -----------------------
# Strict parser for the required schema
# -----------------------

def parse_strict_schema(s: str) -> Dict[str,Any]:
    """
    Parse an underscore-separated string into the exact fields.
    Expected order:
      version_solver_objective_seed_presolve_sym_warm_cuts[_DEBUG]
    If some fields are missing they take defaults.
    """
    # defaults
    parsed = {
        "version": None,
        "solver": None,
        "objective": None,
        "seed": None,
        "presolve": True,
        "sym": "",
        "warm": "",
        "cuts": False,
        "debug": False
    }
    if s is None or s == "":
        return parsed

    tokens = s.split("_")
    # assign by position with safe-guards
    # positions: 0..7 -> map accordingly
    # accept fewer tokens: missing => defaults
    try:
        if len(tokens) >= 1:
            parsed["version"] = tokens[0]  # will validate later
        if len(tokens) >= 2:
            parsed["solver"] = tokens[1]
        if len(tokens) >= 3:
            parsed["objective"] = tokens[2]
        if len(tokens) >= 4:
            parsed["seed"] = tokens[3]
        if len(tokens) >= 5:
            parsed["presolve"] = bool_from_token(tokens[4], True)
        if len(tokens) >= 6:
            parsed["sym"] = tokens[5]
        if len(tokens) >= 7:
            parsed["warm"] = tokens[6]
        if len(tokens) >= 8:
            parsed["cuts"] = bool_from_token(tokens[7], False)
        if len(tokens) >= 9:
            parsed["debug"] = bool_from_token(tokens[8], False)
    except Exception:
        # fallback to defaults if parsing failed
        pass

    # normalize some fields
    if parsed["solver"] is not None:
        parsed["solver"] = parsed["solver"].upper()

    if parsed["objective"] is not None:
        o = parsed["objective"].lower()
        if o == "feas":
            parsed["objective"] = "feasible"
        elif o == "opt":
            parsed["objective"] = "balanced"
        else:
            parsed["objective"] = o

    # seed treat: 'n' -> None, numeric->int, 'y' -> True (use random seed)
    if parsed["seed"] is not None:
        seed_tok = str(parsed["seed"]).lower()
        if seed_tok == "n":
            parsed["seed"] = None
        elif seed_tok == "y":
            parsed["seed"] = True
        else:
            parsed["seed"] = try_int(seed_tok) or seed_tok

    # version normalization: accept a few synonyms
    if parsed["version"] is not None:
        v = parsed["version"].strip().lower()
        if v in ("base","v_base","v1","v_1"):
            parsed["version"] = "base"
        elif v in ("i!=j","i!=j_variant","i_neq_j"):
            parsed["version"] = "i!=j"
        elif v in ("i<j","i<j_variant","i_lt_j"):
            parsed["version"] = "i<j"
        elif v in ("pre","preprocessing","v4","v_4"):
            parsed["version"] = "pre"
        else:
            # if unknown, keep original (will error later)
            parsed["version"] = parsed["version"]

    # sym: keep uppercase letters only A..D
    parsed["sym"] = "".join([c.upper() for c in parsed["sym"] if c.upper() in ("A","B","C","D")])

    return parsed

# -----------------------
# Main execution flow
# -----------------------

def main():
    parser = argparse.ArgumentParser(description="MIP main runner. Schema: version_solver_objective_seed_presolve_sym_warm_cuts[_DEBUG]")
    parser.add_argument("--version", type=str, required=True,
                        help="version token string in strict schema (underscore-separated). Example: base_CBC_feas_42_True_A_week1_False")
    parser.add_argument("--instance", "--n", dest="n", type=int, required=True, help="number of teams (even)")
    parser.add_argument("--time", dest="time_limit", type=int, default=300, help="time limit seconds")
    parser.add_argument("--out", dest="out", type=str, default=None, help="output JSON path (default: res/MIP/{n}.json)")
    args = parser.parse_args()

    # parse the schema string strictly
    schema = parse_strict_schema(args.version)

    # apply defaults or simple validations
    version = schema["version"] or "base"
    solver = schema["solver"] or "CBC"
    objective = schema["objective"] or "feasible"
    seed = schema["seed"]
    presolve = schema["presolve"]
    sym_flags = schema["sym"] or ""
    warm_start = schema["warm"] or ""
    cuts = schema["cuts"]
    debug = schema["debug"]

    # Validate basic fields
    if solver not in ("CBC","GLPK"):
        print(f"[ERROR] Unsupported solver '{solver}'. Supported: CBC, GLPK", file=sys.stderr)
        sys.exit(2)

    if objective not in ("feasible","balanced"):
        print(f"[ERROR] Unsupported objective '{objective}'. Use 'feas' or 'opt' in schema.", file=sys.stderr)
        sys.exit(2)

    # Determine version module file
    here = os.path.dirname(__file__)
    if version == "pre":
        version_path = os.path.join(here, "v_4.py")
    else:
        # v_1_2_3 handles base, i!=j, i<j variants internally (we pass variant name as needed)
        version_path = os.path.join(here, "v_1_2_3.py")

    # compute output path
    out_path = args.out
    if out_path is None:
        out_dir = os.path.join(os.getcwd(), "res", "MIP")
        os.makedirs(out_dir, exist_ok=True)
        out_path = os.path.join(out_dir, f"{args.n}.json")

    # build a stable key name (similar to your earlier drivers)
    # For CBC keep original style; for GLPK we append 'dual' etc. This approximates the earlier convention.
    if solver == "CBC":
        # include version token compactly
        ver_token = version if version != "pre" else "preprocessing"
        key_name = f"{solver}_{ver_token}_{objective}_{warm_start}_{sym_flags}_{seed}"
    else:
        # GLPK
        if cuts:
            key_name = f"{solver}_{version}_{objective}_dual_cuts_{sym_flags}_{seed}"
        else:
            key_name = f"{solver}_{version}_{objective}_dual_{sym_flags}_{seed}"

    # Import version module
    try:
        mod = import_module_from_path(version_path)
    except Exception as e:
        print(f"[ERROR] Failed to import version module at {version_path}: {e}", file=sys.stderr)
        traceback.print_exc()
        write_result(out_path, key_name, default_result())
        sys.exit(1)

    print(f"[INFO] Running version='{version}' solver='{solver}' objective='{objective}' n={args.n} time={args.time_limit}")
    print(f"[INFO] params: seed={seed} presolve={presolve} sym_flags='{sym_flags}' warm_start='{warm_start}' cuts={cuts} debug={debug}")
    result = None
    meta = {"pulp_status":"unknown","runtime_sec":0.0}

    try:
        # For v_1_2_3: call build_model(n, solver=..., time_limit=..., seed=..., presolve=..., version=variant_token, sym_flags=..., objective=..., warm_start=..., cuts=...)
        if version in ("base", "i!=j", "i<j"):
            if not hasattr(mod, "build_model"):
                raise RuntimeError("module does not expose build_model(...)")
            kwargs = {
                "solver": solver,
                "time_limit": args.time_limit,
                "seed": seed,
                "presolve": presolve,
                "version": version,       # pass the variant so module knows which internal variant to use
                "sym_flags": sym_flags,
                "objective": objective,
                "warm_start": warm_start,
                "cuts": cuts,
                # debug flag can be passed as well
                "debug": debug
            }
            print(f"[INFO] Calling build_model(...) with kwargs: {kwargs}")
            out_res = mod.build_model(args.n, **kwargs)
            # support both return types: (result, meta) or result
            if isinstance(out_res, tuple) and len(out_res) == 2:
                result, meta = out_res
            else:
                result = out_res
                meta = {"pulp_status":"ok","runtime_sec":0.0}

        # For preprocessing version: call build_model_with_permutations OR execute the script
        elif version == "pre":
            if hasattr(mod, "build_model_with_permutations"):
                kwargs = {
                    "n": args.n,
                    "time_limit": args.time_limit,
                    "seed": seed,
                    "presolve": presolve,
                    "warm_start": warm_start,
                    "objective": objective,
                    "solver": solver
                }
                print(f"[INFO] Calling build_model_with_permutations(...) with kwargs: {kwargs}")
                out_res = mod.build_model_with_permutations(**kwargs)
                if isinstance(out_res, tuple) and len(out_res) == 2:
                    result, meta = out_res
                else:
                    result = out_res
                    meta = {"pulp_status":"ok","runtime_sec":0.0}
            else:
                # fallback: run the module as standalone script (it may run its own batch logic)
                import runpy
                print("[INFO] No build_model_with_permutations found; running script as fallback.")
                runpy.run_path(version_path, run_name="__main__")
                result = default_result()
                meta = {"pulp_status":"ran_script","runtime_sec":0.0}
        else:
            raise RuntimeError(f"Unknown version token '{version}'")
    except Exception as e:
        print(f"[ERROR] Exception during model invocation: {e}", file=sys.stderr)
        traceback.print_exc()
        result = default_result()
        meta = {"pulp_status":"error","runtime_sec":0.0}

    # Ensure result exists, then write/merge it
    if result is None:
        result = default_result()

    try:
        write_result(out_path, key_name, result)
        print(f"[DONE] Wrote {out_path} with key {key_name}")
        print(f"[STATUS] meta={meta} result.optimal={result.get('optimal')}, obj={result.get('obj')}, time_field={result.get('time')}")
    except Exception as e:
        print(f"[ERROR] Unable to write output file {out_path}: {e}", file=sys.stderr)
        traceback.print_exc()
        sys.exit(1)


if __name__ == "__main__":
    main()
