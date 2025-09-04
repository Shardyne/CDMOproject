#!/usr/bin/env python3
# parse_smt_and_update_json.py
import argparse, json, os, re, subprocess, sys, time
from collections import defaultdict

# ---------- helpers to parse solver stdout ----------

# (define-fun Var () <Sort> <Value>)
DEF_FUN_ANY_RE = re.compile(r"\(define-fun\s+([A-Za-z0-9_]+)\s+\(\)\s+([A-Za-z0-9_]+)\s+([^\s\)]+)\)", re.I)
# ((Var value)) or (Var value) with int or bool
GET_VAL_PAIR_RE = re.compile(r"\(\s*([A-Za-z0-9_]+)\s+(true|false|-?\d+)\s*\)", re.I)

def _coerce_lit(sort: str, lit: str):
    s = sort.lower()
    v = lit.lower()
    if s == "bool":
        return v == "true"
    # default: try int
    try:
        return int(lit)
    except ValueError:
        raise ValueError(f"Unsupported literal for sort {sort}: {lit}")

def parse_model(stdout: str) -> dict:
    """
    Return a dict var_name -> (int|bool) value.
    Supports both (define-fun ...) and ((var val)) styles with int/bool.
    """
    vals = {}
    for m in DEF_FUN_ANY_RE.finditer(stdout):
        name, sort, lit = m.group(1), m.group(2), m.group(3)
        vals[name] = _coerce_lit(sort, lit)
    if vals:
        return vals
    for m in GET_VAL_PAIR_RE.finditer(stdout):
        name, tok = m.group(1), m.group(2)
        if tok.lower() in ("true", "false"):
            vals[name] = (tok.lower() == "true")
        else:
            vals[name] = int(tok)
    return vals

# ---------- reconstruction from assignments ----------

def infer_grid_size(varnames, prefix):
    """Infer max indices for 2D vars like Per_t_w from names <prefix>_<t>_<w>."""
    tw = []
    pat = re.compile(rf"^{re.escape(prefix)}_(\d+)_(\d+)$")
    for v in varnames:
        m = pat.match(v)
        if m:
            tw.append((int(m.group(1)), int(m.group(2))))
    if not tw:
        return None, None
    T = max(t for t, _ in tw) + 1
    W = max(w for _, w in tw) + 1
    return T, W

def read_grid(assigns, prefix, T, W, default=None):
    """Make a T×W matrix for vars named <prefix>_<t>_<w> (values may be int or bool)."""
    grid = [[default for _ in range(W)] for _ in range(T)]
    for t in range(T):
        for w in range(W):
            vname = f"{prefix}_{t}_{w}"
            if vname in assigns:
                grid[t][w] = assigns[vname]
    return grid

def _as_bool(x):
    # Accept bool or int 0/1
    if isinstance(x, bool):
        return x
    return bool(int(x))

def build_sol_from_per_home(T, W, P, Per, Home):
    """
    Return P×W matrix of [home, away] using Per/Home only.
    Home may be bool or 0/1 int.
    Teams are returned 1-based.
    """
    sol = [[None for _ in range(W)] for _ in range(P)]
    for w in range(W):
        buckets = defaultdict(list)
        for t in range(T):
            p = Per[t][w]
            if p is None:
                raise ValueError(f"Missing Per[{t}][{w}]")
            buckets[p].append(t)
        for p in range(1, P+1):
            teams = buckets.get(p, [])
            if len(teams) != 2:
                raise ValueError(f"Week {w}, period {p} has {len(teams)} teams (expected 2).")
            a, b = teams
            ha, hb = _as_bool(Home[a][w]), _as_bool(Home[b][w])
            if ha and not hb:
                sol[p-1][w] = [a+1, b+1]
            elif hb and not ha:
                sol[p-1][w] = [b+1, a+1]
            else:
                # Shouldn't happen if XOR(Home[a,w],Home[b,w]) holds; fallback orientation
                sol[p-1][w] = [a+1, b+1]
    return sol

def build_sol_from_opp_home(T, W, P, Opp, Home, Per=None):
    """
    Return P×W matrix of [home, away] using Opp/Home, optionally placing by Per.
    Home may be bool or 0/1 int.
    """
    sol = [[None for _ in range(W)] for _ in range(P)]
    for w in range(W):
        seen = set()
        pairs = []
        for t in range(T):
            if t in seen:
                continue
            k = Opp[t][w] - 1
            if k == t or not (0 <= k < T):
                raise ValueError(f"Bad Opp[{t}][{w}] = {Opp[t][w]}")
            if k in seen:
                continue
            seen.add(t); seen.add(k)
            ha, hb = _as_bool(Home[t][w]), _as_bool(Home[k][w])
            if ha ^ hb:
                pairs.append((t, k) if ha else (k, t))
            else:
                pairs.append((t, k))  # fallback
        if len(pairs) != P:
            raise ValueError(f"Week {w}: found {len(pairs)} matches (expected {P}).")

        if Per is not None:
            per_bucket = {}
            for h, a in pairs:
                p = Per[h][w]
                if p is None:
                    raise ValueError(f"Missing Per at week {w}.")
                per_bucket[p] = [h+1, a+1]
            for p in range(1, P+1):
                if p not in per_bucket:
                    raise ValueError(f"Week {w}: no match for period {p}.")
                sol[p-1][w] = per_bucket[p]
        else:
            pairs.sort(key=lambda ab: min(ab))
            for p, (h, a) in enumerate(pairs, start=1):
                sol[p-1][w] = [h+1, a+1]
    return sol

# ---------- run solver ----------

def run_solver(smt_path, solver, timeout_s):
    if solver == "z3" or solver.endswith("z3"):
        cmd = [solver, "-smt2", smt_path]
    elif solver == "cvc5" or solver.endswith("cvc5"):
        cmd = [solver, "--lang=smt2", "--produce-models", smt_path]
    else:
        raise SystemExit("solver must be z3 or cvc5")
    t0 = time.time()
    try:
        out = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                             timeout=timeout_s, check=False, text=True)
    except subprocess.TimeoutExpired:
        return "timeout", "", timeout_s
    elapsed = time.time() - t0
    return out.stdout, out.stderr, elapsed

# ---------- main ----------

def main():
    ap = argparse.ArgumentParser(description="Parse SMT2 model and update res/SMT/{N}.json")
    ap.add_argument("--smt", required=True, help="Path to .smt2 file (must print a model)")
    ap.add_argument("--solver", default="z3", choices=["z3", "cvc5"], help="Solver binary")
    ap.add_argument("--timeout", type=int, default=300, help="Timeout seconds")
    ap.add_argument("--N", type=int, required=False, help="Teams (even). If omitted, inferred.")
    ap.add_argument("--outdir", default="res/SMT", help="Output directory")
    args = ap.parse_args()

    smt_path = args.smt
    approach = f'{args.solver}_' + os.path.splitext(os.path.basename(smt_path))[0]

    stdout, stderr, elapsed = run_solver(smt_path, args.solver, args.timeout)

    if stdout == "timeout":
        N = args.N or 0
        os.makedirs(args.outdir, exist_ok=True)
        outpath = os.path.join(args.outdir, f"{N}.json") if N else os.path.join(args.outdir, "unknownN.json")
        existing = {}
        if os.path.exists(outpath):
            try:
                with open(outpath, "r") as f: existing = json.load(f)
            except Exception: pass
        existing[approach] = {"time": args.timeout, "optimal": False, "obj": None, "sol": []}
        with open(outpath, "w") as f: json.dump(existing, f)
        print(f"[TIMEOUT] merged placeholder into {outpath}")
        return

    status_line = (stdout.strip().splitlines() + [""])[0].strip().lower()
    if status_line.startswith("unsat") or status_line.startswith("unknown"):
        N = args.N or 0
        os.makedirs(args.outdir, exist_ok=True)
        outpath = os.path.join(args.outdir, f"{N}.json") if N else os.path.join(args.outdir, "unknownN.json")
        existing = {}
        if os.path.exists(outpath):
            try:
                with open(outpath, "r") as f: existing = json.load(f)
            except Exception: pass
        existing[approach] = {"time": int(elapsed), "optimal": False, "obj": None, "sol": []}
        with open(outpath, "w") as f: json.dump(existing, f)
        print(f"[{status_line.upper()}] merged placeholder into {outpath}")
        return

    assigns = parse_model(stdout)
    if not assigns:
        print(stdout)
        print(stderr, file=sys.stderr)
        raise SystemExit("Could not parse any variable assignments. Ensure the file does (get-model) or (get-value ...).")

    # Infer sizes
    T1, W1 = infer_grid_size(assigns.keys(), "Per")
    T2, W2 = infer_grid_size(assigns.keys(), "Home")
    T3, W3 = infer_grid_size(assigns.keys(), "Opp")
    T = args.N or T1 or T2 or T3
    W = W1 or W2 or W3
    if not T or not W:
        raise SystemExit("Could not infer N/W. Pass --N explicitly or ensure Per_*/Home_* vars exist.")
    P = T // 2

    # Build grids (Home/High may be bool)
    Per = read_grid(assigns, "Per", T, W, default=None) if T1 else None
    Home = read_grid(assigns, "Home", T, W, default=False) if T2 else [[False]*W for _ in range(T)]
    Opp = read_grid(assigns, "Opp", T, W, default=None) if T3 else None
    # High is optional; parse if present (not used for reconstruction)
    High = [assigns.get(f"High_{t}") for t in range(T)] if any(k.startswith("High_") for k in assigns) else None

    # Reconstruct solution
    try:
        if Opp is not None:
            sol = build_sol_from_opp_home(T, W, P, Opp, Home, Per)
        else:
            if Per is None:
                raise ValueError("Need either Opp or Per to reconstruct matches.")
            sol = build_sol_from_per_home(T, W, P, Per, Home)
    except Exception as e:
        os.makedirs(args.outdir, exist_ok=True)
        outpath = os.path.join(args.outdir, f"{T}.json")
        payload = {approach: {"time": int(args.timeout), "optimal": False, "obj": None, "sol": []}}
        with open(outpath, "w") as f: json.dump(payload, f)
        raise SystemExit(f"[ERROR] {e}\nWrote placeholder {outpath}")

    # Objective: sum_t |2*home_t - W|
    counts = [sum(1 if _as_bool(Home[t][w]) else 0 for w in range(W)) for t in range(T)]
    obj = int(sum(abs(2*c - W) for c in counts))

    # Merge/update JSON
    os.makedirs(args.outdir, exist_ok=True)
    outpath = os.path.join(args.outdir, f"{T}.json")
    try:
        with open(outpath, "r") as f:
            existing = json.load(f)
    except Exception:
        existing = {}

    existing[approach] = {
        "time": int(elapsed),
        "optimal": True,
        "obj": obj,
        "sol": sol
    }
    with open(outpath, "w") as f:
        json.dump(existing, f)
    print(f"[OK] {approach} → {outpath}  (time={elapsed:.2f}s, obj={obj})")

if __name__ == "__main__":
    main()
