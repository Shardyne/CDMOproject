#!/usr/bin/env python3
# parse_smt_and_update_json_from_A.py
import argparse, json, os, re, subprocess, sys, time
from collections import defaultdict

# --------- parse solver stdout ---------

DEF_FUN_RE = re.compile(r"\(define-fun\s+([A-Za-z0-9_]+)\s+\(\)\s+\w+\s+(-?\d+)\)")
GET_VAL_PAIR_RE = re.compile(r"\(\s*([A-Za-z0-9_]+)\s+(-?\d+)\s*\)")

def parse_model(stdout: str) -> dict:
    vals = {}
    for m in DEF_FUN_RE.finditer(stdout):
        vals[m.group(1)] = int(m.group(2))
    if vals:
        return vals
    for m in GET_VAL_PAIR_RE.finditer(stdout):
        vals[m.group(1)] = int(m.group(2))
    return vals

# --------- reconstruction from A[p][w][s] ---------

def infer_P_W_from_A(varnames):
    """
    A_{p}_{w}_{s}  with p ∈ [0..P-1], w ∈ [0..W-1], s ∈ {0,1}
    Returns (P, W) and checks that s ∈ {0,1}.
    """
    pw = []
    pat = re.compile(r"^A_(\d+)_(\d+)_(\d+)$")
    for v in varnames:
        m = pat.match(v)
        if not m:
            continue
        p, w, s = map(int, m.groups())
        if s not in (0, 1):
            raise SystemExit(f"Unexpected slot index s={s} in {v} (expected 0/1).")
        pw.append((p, w))
    if not pw:
        return None, None
    P = max(p for p, _ in pw) + 1
    W = max(w for _, w in pw) + 1
    return P, W

def build_sol_from_A(assigns):
    """
    Returns:
      T (inferred as max team id),
      P, W,
      sol[p][w] = [home, away] (1-based team ids)
    """
    P, W = infer_P_W_from_A(assigns.keys())
    if P is None or W is None:
        raise SystemExit("Could not infer P/W from A_* variables.")
    sol = [[None for _ in range(W)] for _ in range(P)]

    max_team = -1
    for p in range(P):
        for w in range(W):
            v0, v1 = f"A_{p}_{w}_0", f"A_{p}_{w}_1"
            if v0 not in assigns or v1 not in assigns:
                raise SystemExit(f"Missing {v0} or {v1} in model.")
            h, a = assigns[v0], assigns[v1]
            sol[p][w] = [h, a]
            max_team = max(max_team, h, a)

    T = max_team
    if T <= 0:
        raise SystemExit("Could not infer positive team ids from A.")
    return T, P, W, sol

# --------- objectives/checks ---------

def compute_home_away_obj(sol, T, P, W):
    """obj = Σ_t |2*home_t - W|, with home = slot 0 appearances per team."""
    home = [0]*(T+1)  # teams are 1..T
    for p in range(P):
        for w in range(W):
            h, _ = sol[p][w]
            home[h] += 1
    return int(sum(abs(2*home[t] - W) for t in range(1, T+1)))

def compute_period_cap_excess(sol, T, P, W, cap=2):
    """Total excess over 'cap' for appearances of team t in period p across weeks."""
    cnt = [[0]*P for _ in range(T+1)]
    for p in range(P):
        for w in range(W):
            h, a = sol[p][w]
            cnt[h][p] += 1
            cnt[a][p] += 1
    excess = 0
    for t in range(1, T+1):
        for p in range(P):
            if cnt[t][p] > cap:
                excess += (cnt[t][p] - cap)
    return excess

# --------- run solver ---------

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

# --------- main ---------

def main():
    ap = argparse.ArgumentParser(description="Parse SMT2 model (A only) and update res/SMT/{N}.json")
    ap.add_argument("--smt", required=True, help="Path to .smt2 file (must print a model)")
    ap.add_argument("--solver", default="z3", choices=["z3", "cvc5"], help="Solver binary")
    ap.add_argument("--timeout", type=int, default=300, help="Timeout seconds")
    ap.add_argument("--N", type=int, required=False, help="Teams (even). If omitted, inferred from A.")
    ap.add_argument("--outdir", default="res/SMT", help="Output directory")
    args = ap.parse_args()

    smt_path = args.smt
    approach = f'{args.solver}_'+os.path.splitext(os.path.basename(smt_path))[0]

    stdout, stderr, elapsed = run_solver(smt_path, args.solver, args.timeout)
    if stdout == "timeout":
        N = args.N or 0
        os.makedirs(args.outdir, exist_ok=True)
        outpath = os.path.join(args.outdir, f"{N}.json") if N else os.path.join(args.outdir, "unknownN.json")
        existing = {}
        if os.path.exists(outpath):
            try:
                with open(outpath, "r") as f:
                    existing = json.load(f)
            except Exception:
                existing = {}
        existing[approach] = {"time": args.timeout, "optimal": False, "obj": None, "sol": []}
        with open(outpath, "w") as f:
            json.dump(existing, f)
        print(f"[TIMEOUT] merged placeholder into {outpath}")
        return

    status_line = (stdout.strip().splitlines() + [""])[0].strip().lower()
    if status_line.startswith("unsat"):
        N = args.N or 0
        os.makedirs(args.outdir, exist_ok=True)
        outpath = os.path.join(args.outdir, f"{N}.json") if N else os.path.join(args.outdir, "unknownN.json")
        existing = {}
        if os.path.exists(outpath):
            try:
                with open(outpath, "r") as f:
                    existing = json.load(f)
            except Exception:
                existing = {}
        existing[approach] = {"time": 0, "optimal": True, "obj": None, "sol": []}
        with open(outpath, "w") as f:
            json.dump(existing, f)
        print(f"[UNSAT] merged placeholder into {outpath}")
        return

    assigns = parse_model(stdout)
    if not assigns:
        print(stdout)
        print(stderr, file=sys.stderr)
        raise SystemExit("No variable assignments parsed. Ensure your .smt2 does (get-model).")

    # Reconstruct from A only
    T, P, W, sol = build_sol_from_A(assigns)
    if args.N:
        # (Optional) sanity if user forces N
        if args.N != T:
            print(f"[WARN] --N={args.N} differs from inferred T={T}. Using inferred T.", file=sys.stderr)
    N = T

    # Objective and optimality flag
    obj = compute_home_away_obj(sol, N, P, W)
    min_obj = 0 if (W % 2 == 0) else N
    optimal_flag = (obj == min_obj)

    # Optional: ensure period-cap not violated in reconstructed schedule
    try:
        period_excess = compute_period_cap_excess(sol, N, P, W, cap=2)
        if period_excess != 0:
            optimal_flag = False
    except Exception:
        pass

    # Merge/update JSON
    os.makedirs(args.outdir, exist_ok=True)
    outpath = os.path.join(args.outdir, f"{N}.json")
    if os.path.exists(outpath):
        try:
            with open(outpath, "r") as f:
                existing = json.load(f)
        except Exception:
            existing = {}
    else:
        existing = {}

    existing[approach] = {
        "time": int(round(elapsed)),
        "optimal": optimal_flag,
        "obj": obj,
        "sol": sol
    }
    with open(outpath, "w") as f:
        json.dump(existing, f)
    print(f"[OK] {approach} → {outpath}  (time={elapsed:.2f}s, obj={obj}, optimal={optimal_flag}, N={N}, P={P}, W={W})")

if __name__ == "__main__":
    main()
