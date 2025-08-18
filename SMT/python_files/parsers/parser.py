#!/usr/bin/env python3
# parse_smt_and_update_json.py
import argparse, json, os, re, subprocess, sys, time
from collections import defaultdict

# ---------- helpers to parse solver stdout ----------

# Matches Z3 "get-model" lines: (define-fun Var () Int 3)
DEF_FUN_RE = re.compile(r"\(define-fun\s+([A-Za-z0-9_]+)\s+\(\)\s+\w+\s+(-?\d+)\)")
# Matches "get-value" pairs: ((Var 3)) or (Var 3)
GET_VAL_PAIR_RE = re.compile(r"\(\s*([A-Za-z0-9_]+)\s+(-?\d+)\s*\)")

def parse_model(stdout: str) -> dict:
    """
    Return a dict var_name -> int_value.
    Tolerates both (define-fun ...) and ((var val)) styles.
    """
    vals = {}
    # Z3/CVC5 may print "sat" on a line by itself
    # Collect define-fun entries
    for m in DEF_FUN_RE.finditer(stdout):
        vals[m.group(1)] = int(m.group(2))
    if vals:
        return vals
    # Fall back to scanning get-value pairs
    # We accept lines like:
    #  ((Per_0_0 1) (Home_0_0 0) ...)
    for m in GET_VAL_PAIR_RE.finditer(stdout):
        vals[m.group(1)] = int(m.group(2))
    return vals

# ---------- reconstruction from assignments ----------

def infer_grid_size(varnames, prefix):
    """
    Infer max indices for 2D vars like Per_t_w from names Per_{t}_{w}.
    Returns (T_max+1, W_max+1) if found, else (None, None).
    """
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
    """Make a T×W matrix for Int vars like Per_t_w."""
    grid = [[default for _ in range(W)] for _ in range(T)]
    for t in range(T):
        for w in range(W):
            vname = f"{prefix}_{t}_{w}"
            if vname in assigns:
                grid[t][w] = assigns[vname]
    return grid

def build_sol_from_per_home(T, W, P, Per, Home):
    """
    Return P×W matrix of [home, away] using Per/Home only.
    For each (w,p), find the 2 teams with Per[t][w]==p and assign H/A via Home[t][w].
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
            if len(buckets[p]) != 2:
                raise ValueError(f"Week {w}, period {p} has {len(buckets[p])} teams (expected 2).")
            a, b = buckets[p]
            ha = Home[a][w]
            hb = Home[b][w]
            if ha == 1 and hb == 0:
                sol[p-1][w] = [a+1, b+1]
            elif hb == 1 and ha == 0:
                sol[p-1][w] = [b+1, a+1]
            else:
                # Fallback if Home flags not present for some reason
                sol[p-1][w] = [a+1, b+1]
    return sol

def build_sol_from_opp_home(T, W, P, Opp, Home, Per=None):
    """
    Return P×W matrix of [home, away] using Opp/Home, optionally checking Per consistency if provided.
    """
    sol = [[None for _ in range(W)] for _ in range(P)]
    # For each week, we must place N/2 matches into periods 1..P.
    # If Per is given, we use it; else, we pack matches in ascending period order by smallest team id.
    for w in range(W):
        seen = set()
        pairs = []
        for t in range(T):
            if t in seen:
                continue
            k = Opp[t][w] - 1
            if k == t or k < 0 or k >= T:
                raise ValueError(f"Bad Opp[{t}][{w}] = {Opp[t][w]}")
            if (k, t) in seen or k in seen:
                continue
            seen.add(t); seen.add(k)
            # Decide H/A
            if Home[t][w] + Home[k][w] != 1:
                # Fallback: force t home
                pairs.append((t, k))
            else:
                pairs.append((t, k) if Home[t][w] == 1 else (k, t))
        if len(pairs) != P:
            raise ValueError(f"Week {w}: found {len(pairs)} matches (expected {P}).")

        if Per:
            # place by Per info
            per_buckets = defaultdict(list)
            for t_home, t_away in pairs:
                p = Per[t_home][w]  # both teams share same p
                if p is None:
                    raise ValueError(f"Missing Per at week {w}.")
                per_buckets[p] = [t_home, t_away]
            for p in range(1, P+1):
                if p not in per_buckets:
                    raise ValueError(f"Week {w}: no match for period {p}.")
                a, b = per_buckets[p]
                sol[p-1][w] = [a+1, b+1]
        else:
            # deterministic placement without Per: sort pairs and assign p=1..P
            pairs.sort(key=lambda ab: min(ab))
            for p, (a,b) in enumerate(pairs, start=1):
                sol[p-1][w] = [a+1, b+1]
    return sol

# ---------- run solver ----------

def run_solver(smt_path, solver, timeout_s):    
    if solver == "z3" or solver.endswith("z3"):
        cmd = [solver, "-smt2", smt_path]
    elif solver == "cvc5" or solver.endswith("cvc5"):
        # --produce-models recommended if file doesn’t already set it
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
    ap.add_argument("--N", type=int, required=False, help="Teams (even). If omitted, inferred from variables.")
    ap.add_argument("--outdir", default="res/SMT", help="Output directory")
    args = ap.parse_args()

    smt_path = args.smt
    approach = f'{args.solver}_'+os.path.splitext(os.path.basename(smt_path))[0]  # file stem as approach key

    stdout, stderr, elapsed = run_solver(smt_path, args.solver, args.timeout)
    # Handle explicit timeout
    if stdout == "timeout":
        N = args.N or 0
        os.makedirs(args.outdir, exist_ok=True)
        outpath = os.path.join(args.outdir, f"{N}.json") if N else os.path.join(args.outdir, "unknownN.json")
    
        if os.path.exists(outpath):
            try:
                with open(outpath, "r") as f:
                    existing = json.load(f)
            except Exception:
                existing = {}
        else:
            existing = {}
    
        existing[approach] = {
            "time": args.timeout,
            "optimal": False,
            "obj": None,
            "sol": []
        }
    
        with open(outpath, "w") as f:
            json.dump(existing, f)
    
        print(f"[TIMEOUT] merged placeholder into {outpath}")
        return


    # Quick status
    status_line = (stdout.strip().splitlines() + [""])[0].strip().lower()
    if status_line.startswith("unsat"):
        # Write placeholder (merge into existing JSON)
        N = args.N or 0
        os.makedirs(args.outdir, exist_ok=True)
        outpath = os.path.join(args.outdir, f"{N}.json") if N else os.path.join(args.outdir, "unknownN.json")

        # Load existing JSON if it exists
        if os.path.exists(outpath):
            try:
                with open(outpath, "r") as f:
                    existing = json.load(f)
            except Exception:
                existing = {}
        else:
            existing = {}

        # Update with placeholder entry
        existing[approach] = {"time": 0, "optimal": True, "obj": None, "sol": []}

        # Write back
        with open(outpath, "w") as f:
            json.dump(existing, f)

        print(f"[UNSAT] merged placeholder into {outpath}")
        return


    # Parse model
    assigns = parse_model(stdout)
    if not assigns:
        print(stdout)
        print(stderr, file=sys.stderr)
        raise SystemExit("Could not parse any variable assignments. Ensure your .smt2 does (get-model) or (get-value ...)")

    # Infer sizes
    T1, W1 = infer_grid_size(assigns.keys(), "Per")
    T2, W2 = infer_grid_size(assigns.keys(), "Home")
    T3, W3 = infer_grid_size(assigns.keys(), "Opp")
    # Prefer Per/Home inference
    T = T1 or T2 or T3
    W = W1 or W2 or W3
    if args.N:
        T = args.N
    if not T or not W:
        raise SystemExit("Could not infer N/W. Pass --N explicitly or ensure Per_*/Home_* variables exist.")
    P = T // 2

    # Build grids if present
    Per = read_grid(assigns, "Per", T, W, default=None) if T1 else None
    Home = read_grid(assigns, "Home", T, W, default=0) if T2 else [[0]*W for _ in range(T)]
    Opp = read_grid(assigns, "Opp", T, W, default=None) if T3 else None

    # Reconstruct solution
    try:
        if Opp is not None:
            sol = build_sol_from_opp_home(T, W, P, Opp, Home, Per)
        else:
            if Per is None:
                raise ValueError("Need either Opp or Per to reconstruct matches.")
            sol = build_sol_from_per_home(T, W, P, Per, Home)
    except Exception as e:
        # If reconstruction failed, mark unsolved
        os.makedirs(args.outdir, exist_ok=True)
        outpath = os.path.join(args.outdir, f"{T}.json")
        payload = {approach: {"time": int(args.timeout), "optimal": False, "obj": None, "sol": []}}
        with open(outpath, "w") as f:
            json.dump(payload, f)
        raise SystemExit(f"[ERROR] {e}\nWrote placeholder {outpath}")

    # Compute imbalance objective if Home is present: sum_t |2*home_t - W|
    obj = None
    if Home is not None:
        counts = [sum(Home[t][w] for w in range(W)) for t in range(T)]
        obj = int(sum(abs(2*c - W) for c in counts))

    # Merge/update JSON
    os.makedirs(args.outdir, exist_ok=True)
    outpath = os.path.join(args.outdir, f"{T}.json")
    if os.path.exists(outpath):
        try:
            with open(outpath, "r") as f:
                existing = json.load(f)
        except Exception:
            existing = {}
    else:
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
