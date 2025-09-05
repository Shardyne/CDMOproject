#!/usr/bin/env python3
"""
Strict-schema main for MIP experiments.

Schema for the "version" argument (underscore-separated):
  version_solver_objective_seed_presolve_sym_warm_cuts

Fields (position-based):
  - version: one of {base, i!=j, i<j, pre}
  - solver:  one of {CBC, GLPK}
  - objective: {feas -> 'feasible', opt -> 'balanced'}
  - seed: integer or 'n' (meaning no-seed)
  - presolve: optional boolean 'True'|'False' (default True)
  - sym: optional string containing letters A,B,C,D (only used by v_1_2_3)
  - warm: warm_start strategy string (see README / allowed values)
  - cuts: optional boolean 'True'|'False' (default False)
  - DEBUG: optional boolean 'True'|'False' (default False)

This main:
 - strictly parses the schema token into variables,
 - allows CLI overrides for instance (n), time, seed and out path,
 - selects the correct version file and calls the expected API.
 - merges the produced result into the JSON `out` under a stable key.
"""

import argparse
import importlib.util
import json
import os
import sys
import traceback

# --------------------
# Helpers
# --------------------
def bool_from_token(tok, default=False):
    if tok is None:
        return default
    t = str(tok).strip().lower()
    if t in ('1','true','t','y','yes'):
        return True
    if t in ('0','false','f','n','no'):
        return False
    return default

def safe_int(tok):
    try:
        return int(tok)
    except Exception:
        return None

def import_module_from_path(path):
    """Import a python module from a file system path."""
    if not os.path.exists(path):
        raise FileNotFoundError(path)
    name = os.path.splitext(os.path.basename(path))[0]
    spec = importlib.util.spec_from_file_location(name, path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod

def write_merge_json(out_path, key_name, result_dict):
    """Merge result_dict under key_name into JSON file out_path."""
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    old = {}
    if os.path.exists(out_path):
        try:
            with open(out_path, 'r') as f:
                old = json.load(f)
                if not isinstance(old, dict):
                    old = {}
        except Exception:
            old = {}
    old[key_name] = result_dict
    with open(out_path, 'w') as f:
        json.dump(old, f, indent=2)

def make_default_result():
    return {"time": 300, "optimal": False, "obj": None, "sol": []}

# --------------------
# Parser strictly following schema
# --------------------
def parse_schema_token(schema_str):
    """
    Parse the schema string version_solver_objective_seed_presolve_sym_warm_cuts
    Returns a dictionary with parsed fields (with defaults).
    """
    parts = schema_str.split("_") if schema_str else []
    # Initialize with defaults
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

    # Required minimum: version, solver, objective, seed.
    # We'll extract sequentially; missing optional fields left as defaults.
    if len(parts) >= 1:
        parsed['version'] = parts[0].strip()
    if len(parts) >= 2:
        parsed['solver'] = parts[1].strip().upper()
    if len(parts) >= 3:
        obj_tok = parts[2].strip().lower()
        if obj_tok in ('feas', 'feasible'):
            parsed['objective'] = 'feasible'
        elif obj_tok in ('opt', 'balanced', 'balance'):
            parsed['objective'] = 'balanced'
        else:
            parsed['objective'] = obj_tok  # keep raw if unknown
    if len(parts) >= 4:
        seed_tok = parts[3].strip()
        if seed_tok.lower() == 'n':
            parsed['seed'] = None
        else:
            parsed['seed'] = safe_int(seed_tok) if safe_int(seed_tok) is not None else seed_tok
    # optional presolve
    if len(parts) >= 5:
        parsed['presolve'] = bool_from_token(parts[4], default=True)
    if len(parts) >= 6:
        parsed['sym'] = parts[5].strip()
    if len(parts) >= 7:
        parsed['warm'] = parts[6].strip()
    if len(parts) >= 8:
        parsed['cuts'] = bool_from_token(parts[7], default=False)
    if len(parts) >= 9:
        parsed['debug'] = bool_from_token(parts[8], default=False)

    # Normalize version tokens: accept different synonyms
    v = parsed['version']
    if v is not None:
        vv = v.lower()
        if vv in ('base', 'v1', 'v_1', 'v_1_2_3', 'v123'):
            parsed['version'] = 'base'
        elif vv in ('i!=j', 'i_not_eq_j', 'neq'):
            parsed['version'] = 'i!=j'
        elif vv in ('i<j', 'ilj', 'ilessj'):
            parsed['version'] = 'i<j'
        elif vv in ('pre', 'preprocessing','v4','v_4'):
            parsed['version'] = 'pre'
        else:
            # if unknown, try to pass through
            parsed['version'] = v

    # Validate solver
    if parsed['solver'] is not None:
        if parsed['solver'] not in ('CBC','GLPK','CPLEX','GUROBI'):
            # Accept only CBC or GLPK as per your allowed list; fallback to CBC
            parsed['solver'] = parsed['solver']  # keep but caller may override
    return parsed

# --------------------
# Main
# --------------------
def main():
    parser = argparse.ArgumentParser(description="MIP main driver (strict schema parser).")
    parser.add_argument("--version", type=str, required=True,
                        help="version schema: version_solver_objective_seed_presolve_sym_warm_cuts")
    parser.add_argument("--instance", "--n", dest="n", type=int, required=True,
                        help="number of teams (n must be even)")
    parser.add_argument("--time", dest="time_limit", type=int, default=300,
                        help="time limit in seconds (default 300)")
    parser.add_argument("--seed", dest="seed_cli", type=str, default=None,
                        help="override seed from schema; use integer or 'n' for no seed")
    parser.add_argument("--out", type=str, default=None,
                        help="output JSON path. Default: res/MIP/{n}.json")
    args = parser.parse_args()

    # Parse the strict schema
    parsed = parse_schema_token(args.version)

    # CLI overrides for seed (if provided)
    if args.seed_cli is not None:
        s = args.seed_cli.strip()
        if s.lower() == 'n':
            parsed['seed'] = None
        else:
            parsed['seed'] = safe_int(s) if safe_int(s) is not None else s

    # Compose effective args
    n = args.n
    time_limit = args.time_limit
    seed = parsed['seed']
    presolve = parsed['presolve']
    sym = parsed['sym']
    warm = parsed['warm']
    cuts = parsed['cuts']
    debug = parsed['debug']
    solver = parsed['solver'] or "CBC"
    objective = parsed['objective'] or "feasible"
    version = parsed['version']

    # Decide which version file to load
    here = os.path.dirname(__file__)
    if version == 'pre':
        version_file = os.path.join(here, "v_4.py")
    else:
        # all of base, i!=j, i<j are handled inside v_1_2_3.py by passing 'version' parameter
        version_file = os.path.join(here, "v_1_2_3.py")

    # default output path if not provided
    out = args.out
    if out is None:
        out_dir = os.path.join(os.getcwd(), "res", "MIP")
        os.makedirs(out_dir, exist_ok=True)
        out = os.path.join(out_dir, f"{n}.json")

    # Generate a stable approach key for JSON merging
    # Example keys:
    #  CBC_base_feasible_week1_seed42_presolveTrue_cutsFalse
    #  GLPK_preprocessing_balanced_week1_seed26_presolveTrue_cutsFalse
    solver_tag = solver.upper()
    ver_tag = ("preprocessing" if version == 'pre' else version.replace('!','bang').replace('<','lt'))
    key_elems = [solver_tag, ver_tag, objective]
    if warm:
        key_elems.append(str(warm))
    if seed is not None:
        key_elems.append(f"seed{seed}")
    key_elems.append(f"presolve{str(presolve)}")
    key_elems.append(f"cuts{str(cuts)}")
    if sym:
        key_elems.append(f"sym{sym}")
    key_name = "_".join(key_elems)

    # Import module and call expected API
    result = None
    meta = {"pulp_status": "unknown", "runtime_sec": 0.0}

    try:
        mod = import_module_from_path(version_file)
    except Exception as e:
        print(f"[ERROR] Cannot import version file {version_file}: {e}", file=sys.stderr)
        traceback.print_exc()
        # write fallback
        write_merge_json(out, key_name, make_default_result())
        sys.exit(2)

    print(f"[INFO] Invoking MIP version file: {version_file}")
    print(f"[INFO] params: n={n}, solver={solver}, objective={objective}, seed={seed}, presolve={presolve}, sym={sym}, warm={warm}, cuts={cuts}, time_limit={time_limit}")

    try:
        if version == 'pre':
            # v_4: prefer build_model_with_permutations(n=..., time_limit=..., seed=..., presolve=..., warm_start=..., objective=..., solver=...)
            if hasattr(mod, "build_model_with_permutations"):
                out_res = mod.build_model_with_permutations(
                    n=n,
                    time_limit=time_limit,
                    seed=seed,
                    presolve=presolve,
                    warm_start=warm,
                    objective=objective,
                    solver=solver
                )
                if isinstance(out_res, tuple) and len(out_res) == 2:
                    result, meta = out_res
                else:
                    result = out_res
                    meta = {"pulp_status":"ok","runtime_sec":0.0}
            else:
                # fallback: run module as script (it might have its own driver)
                print("[WARN] v_4 module has no build_model_with_permutations; executing as script fallback.")
                import runpy
                runpy.run_path(version_file, run_name="__main__")
                result = make_default_result()
                meta = {"pulp_status":"ran_script","runtime_sec":0.0}
        else:
            # v_1_2_3: call build_model(nn, solver=..., time_limit=..., seed=..., presolve=..., version=..., sym_flags=..., objective=..., warm_start=..., cuts=...)
            if hasattr(mod, "build_model"):
                out_res = mod.build_model(
                    n=n,
                    solver=solver,
                    time_limit=time_limit,
                    seed=seed,
                    presolve=presolve,
                    version=version,        # pass 'base' or 'i!=j' or 'i<j'
                    sym_flags=sym or "",
                    objective=objective,
                    warm_start=warm or "",
                    cuts=cuts
                )
                if isinstance(out_res, tuple) and len(out_res) == 2:
                    result, meta = out_res
                else:
                    result = out_res
                    meta = {"pulp_status":"ok","runtime_sec":0.0}
            else:
                # fallback: maybe the module defines a 'run' helper; else run it as script
                if hasattr(mod, "run"):
                    out_res = mod.run(n, time_limit, bool(seed))
                    if isinstance(out_res, tuple) and len(out_res) == 2:
                        result, meta = out_res
                    else:
                        result = out_res
                        meta = {"pulp_status":"ok","runtime_sec":0.0}
                else:
                    print("[WARN] v_1_2_3 module has no build_model or run: executing as script fallback.")
                    import runpy
                    runpy.run_path(version_file, run_name="__main__")
                    result = make_default_result()
                    meta = {"pulp_status":"ran_script","runtime_sec":0.0}

    except Exception as exc:
        print(f"[ERROR] Exception while executing model: {exc}", file=sys.stderr)
        traceback.print_exc()
        result = make_default_result()
        meta = {"pulp_status":"error","runtime_sec":0.0}

    if result is None:
        result = make_default_result()

    # Merge & write JSON
    try:
        write_merge_json(out, key_name, result)
        print(f"[DONE] Wrote/merged result into {out} under key {key_name}")
    except Exception as e:
        print(f"[ERROR] while writing output JSON: {e}", file=sys.stderr)
        traceback.print_exc()

if __name__ == "__main__":
    main()
