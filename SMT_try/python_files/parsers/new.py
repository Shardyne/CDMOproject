#!/usr/bin/env python3
# optimize_schedule.py
# Supports: --approach {channeled,offline} and --solver {z3,cvc5}

import argparse, json, os, time, tempfile, subprocess, re
from collections import defaultdict
from z3 import *

# ------------------------ basic helpers ------------------------

def _as_bool(x):
    if isinstance(x, bool): return x
    try: return is_true(x)
    except Exception: return bool(int(x))

def eval_int_grid(m, X):
    T, W = len(X), len(X[0])
    return [[m.evaluate(X[t][w], model_completion=True).as_long() for w in range(W)] for t in range(T)]

def eval_bool_grid(m, X):
    T, W = len(X), len(X[0])
    return [[is_true(m.evaluate(X[t][w], model_completion=True)) for w in range(W)] for t in range(T)]

def build_sol_from_per_home(T, W, P, Per, Home):
    sol = [[None for _ in range(W)] for _ in range(P)]
    for w in range(W):
        buckets = defaultdict(list)
        for t in range(T):
            p = Per[t][w]
            buckets[p].append(t)
        for p in range(1, P+1):
            teams = buckets.get(p, [])
            if len(teams) != 2:
                raise ValueError(f"Week {w}, period {p} has {len(teams)} teams (expected 2).")
            a, b = teams
            ha, hb = Home[a][w], Home[b][w]
            if ha and not hb:   sol[p-1][w] = [a+1, b+1]
            elif hb and not ha: sol[p-1][w] = [b+1, a+1]
            else:               sol[p-1][w] = [a+1, b+1]
    return sol

def build_sol_from_opp_home(T, W, P, Opp, Home, Per=None):
    sol = [[None for _ in range(W)] for _ in range(P)]
    for w in range(W):
        seen, pairs = set(), []
        for t in range(T):
            if t in seen: continue
            k = Opp[t][w] - 1
            if k == t or not (0 <= k < T): raise ValueError(f"Bad Opp[{t}][{w}]={Opp[t][w]}")
            if k in seen: continue
            seen.add(t); seen.add(k)
            ht, hk = Home[t][w], Home[k][w]
            pairs.append((t, k) if ht and not hk else (k, t) if hk and not ht else (t, k))
        if len(pairs) != P: raise ValueError(f"Week {w}: {len(pairs)} matches, expected {P}.")
        if Per is not None:
            placed = {}
            for h, a in pairs:
                p = Per[h][w]
                placed[p] = [h+1, a+1]
            for p in range(1, P+1):
                if p not in placed: raise ValueError(f"Week {w}: no match for period {p}.")
                sol[p-1][w] = placed[p]
        else:
            pairs.sort(key=lambda ab: min(ab))
            for p, (h, a) in enumerate(pairs, start=1):
                sol[p-1][w] = [h+1, a+1]
    return sol

# -------- parse model from external SMT solver (z3/cvc5) stdout --------

DEF_FUN_ANY_RE = re.compile(r"\(define-fun\s+([A-Za-z0-9_]+)\s+\(\)\s+([A-Za-z0-9_]+)\s+([^\s\)]+)\)", re.I)
GET_VAL_PAIR_RE = re.compile(r"\(\s*([A-Za-z0-9_]+)\s+(-?\d+|true|false)\s*\)", re.I)

def _coerce_lit(sort: str, lit: str):
    s = sort.lower(); v = lit.lower()
    if s == "bool": return v == "true"
    try: return int(lit)
    except: return lit

def parse_model(stdout: str) -> dict:
    vals = {}
    for m in DEF_FUN_ANY_RE.finditer(stdout):
        name, sort, lit = m.group(1), m.group(2), m.group(3)
        vals[name] = _coerce_lit(sort, lit)
    if vals: return vals
    for m in GET_VAL_PAIR_RE.finditer(stdout):
        name, tok = m.group(1), m.group(2)
        if tok.lower() in ("true","false"): vals[name] = (tok.lower() == "true")
        else: vals[name] = int(tok)
    return vals

def infer_grid_size(varnames, prefix):
    tw = []
    pat = re.compile(rf"^{re.escape(prefix)}_(\d+)_(\d+)$")
    for v in varnames:
        m = pat.match(v)
        if m: tw.append((int(m.group(1)), int(m.group(2))))
    if not tw: return None, None
    T = max(t for t, _ in tw) + 1
    W = max(w for _, w in tw) + 1
    return T, W

def read_grid(assigns, prefix, T, W, default=None):
    g = [[default for _ in range(W)] for _ in range(T)]
    for t in range(T):
        for w in range(W):
            k = f"{prefix}_{t}_{w}"
            if k in assigns: g[t][w] = assigns[k]
    return g

# ------------------------ round-robin (0-based weeks, 1-based teams) ------------------------

def circle_method_pairs_zero(n):
    assert n % 2 == 0 and n >= 4
    W, P = n - 1, n // 2
    fixed = 1
    others = list(range(2, n+1))
    schedule = {}
    for w in range(W):
        arr = [fixed] + others
        pairs = [(arr[i], arr[-1 - i]) for i in range(P)]
        schedule[w] = pairs
        others = [others[-1]] + others[:-1]
    return schedule

# ------------------------ models ------------------------

def channeled_model_no_check(N):
    W, P = N - 1, N // 2
    Per  = [[Int(f"Per_{t}_{w}")  for w in range(W)] for t in range(N)]
    Home = [[Bool(f"Home_{t}_{w}") for w in range(W)] for t in range(N)]
    Opp  = [[Int(f"Opp_{t}_{w}")  for w in range(W)] for t in range(N)]
    s = Solver()
    for t in range(N):
        for w in range(W):
            s.add(And(1 <= Per[t][w], Per[t][w] <= P))
            s.add(And(1 <= Opp[t][w], Opp[t][w] <= N))
            s.add(Opp[t][w] != t + 1)
    for t in range(N):
        for k in range(N):
            if t == k: continue
            for w in range(W):
                s.add(Implies(Opp[t][w] == k + 1,
                              And(Per[t][w] == Per[k][w], Opp[k][w] == t + 1, Xor(Home[t][w], Home[k][w]))))
                s.add(Implies(And(Per[t][w] == Per[k][w], Opp[k][w] == t + 1), Opp[t][w] == k + 1))
    for t in range(N):
        s.add(Distinct([Opp[t][w] for w in range(W)]))
    for w in range(W):
        for p in range(1, P+1):
            s.add(Sum([If(Per[t][w] == p, 1, 0) for t in range(N)]) == 2)
    for t in range(N):
        for p in range(1, P+1):
            s.add(Sum([If(Per[t][w] == p, 1, 0) for w in range(W)]) <= 2)
    return s, Per, Home, Opp

def symmetry_breaking_channeled(N, s, Home, Per):
    W, P = N - 1, N // 2
    s.add(Home[0][0] == True)
    for p in range(P):
        a, b = p, N - 1 - p
        s.add(Per[a][0] == p + 1)
        s.add(Per[b][0] == p + 1)
    return s

def offline_approach_domains(N):
    W, P = N - 1, N // 2
    weeks = list(range(W))
    periods = list(range(1, P+1))
    matches = circle_method_pairs_zero(N)
    Per   = [[Int(f"Per_{t}_{w}")  for w in weeks] for t in range(N)]
    Home  = [[Bool(f"Home_{t}_{w}") for w in weeks] for t in range(N)]
    Light = [Int(f"Light_{t}") for t in range(N)]
    s = Solver()
    for t in range(N):
        s.add(And(1 <= Light[t], Light[t] <= P))
        for w in weeks:
            s.add(And(1 <= Per[t][w], Per[t][w] <= P))
    opp = [[None]*N for _ in weeks]
    for w in weeks:
        for (u, v) in matches[w]:
            opp[w][u-1] = v
            opp[w][v-1] = u
    for w in weeks:
        for t in range(N):
            o = opp[w][t] - 1
            s.add(Per[t][w] == Per[o][w])
            for u in range(N):
                if u != t and u != o:
                    s.add(Per[t][w] != Per[u][w])
        for p in periods:
            s.add(Sum([If(Per[t][w] == p, 1, 0) for t in range(N)]) == 2)
    for t in range(N):
        for p in periods:
            cnt = Sum([If(Per[t][w] == p, 1, 0) for w in weeks])
            s.add(If(Light[t] == p, cnt == 1, cnt == 2))
    for w in weeks:
        for (u, v) in matches[w]:
            s.add(Xor(Home[u-1][w], Home[v-1][w]))
    return s, Home, Per, Light, matches

def symmetry_breaking_offline(N, s, Home, Per, matches):
    s.add(Home[0][0] == True)
    for i, (u, v) in enumerate(matches[0], start=1):
        s.add(Per[u-1][0] == i)
        s.add(Per[v-1][0] == i)
    return s

# ------------------------ objective/optimization ------------------------

def add_home_bounds(s, Home, W, N):
    lo, hi = W // 2, W // 2 + (1 if W % 2 else 0)
    for t in range(N):
        ct = Sum([If(Home[t][w], 1, 0) for w in range(W)])
        s.add(ct >= lo, ct <= hi)

def add_objective_vars(s, Home, W, N, obj_name="Obj"):
    counts = [Int(f"cnt_{t}") for t in range(N)]
    dvars  = [Int(f"d_{t}")   for t in range(N)]
    for t in range(N):
        ct = Sum([If(Home[t][w], 1, 0) for w in range(W)])
        s.add(counts[t] == ct)
        s.add(dvars[t] >=  2*counts[t] - W)
        s.add(dvars[t] >= -2*counts[t] + W)
    Obj = Int(obj_name)
    s.add(Obj == Sum(dvars))
    return Obj

def progressive_optimize_z3(s, Obj, timeout_ms):
    s.set(timeout=timeout_ms)
    if s.check() != sat: return None, None
    m = s.model()
    best = m.evaluate(Obj, model_completion=True).as_long()
    while True:
        s.add(Obj <= best - 1)
        r = s.check()
        if r != sat: return best, m
        m = s.model()
        best = m.evaluate(Obj, model_completion=True).as_long()

# ------------------------ external (cvc5) progressive tightening ------------------------

def run_solver_file(path, solver, timeout_s):
    if solver == "z3" or solver.endswith("z3"):
        cmd = [solver, "-smt2", path]
    elif solver == "cvc5" or solver.endswith("cvc5"):
        cmd = [solver, "--lang=smt2", "--produce-models", path]
    else:
        raise RuntimeError("solver must be z3 or cvc5")
    try:
        out = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                             timeout=timeout_s, check=False, text=True)
        return out.stdout, out.stderr
    except subprocess.TimeoutExpired:
        return "timeout", ""

def cvc5_progressive_optimize(base_smt: str, obj_symbol: str, solver_bin: str, timeout_s: int):
    """
    base_smt: declarations + assertions + (Obj == Sum(...)) but NO (check-sat).
    Returns (best_obj, best_stdout) or (None, None).
    """
    t0 = time.time()
    def call_with(extra_assert: str):
        remaining = max(1e-3, timeout_s - (time.time() - t0))
        smt = "(set-logic QF_LIA)\n(set-option :produce-models true)\n" + base_smt
        if extra_assert: smt += extra_assert + "\n"
        smt += "(check-sat)\n(get-model)\n(get-value (" + obj_symbol + "))\n"
        with tempfile.NamedTemporaryFile("w", suffix=".smt2", delete=False) as f:
            f.write(smt); f.flush(); path = f.name
        try:
            stdout, stderr = run_solver_file(path, solver_bin, remaining)
        finally:
            try: os.remove(path)
            except Exception: pass
        return stdout

    # initial solve
    out = call_with("")
    if out == "timeout" or out.strip().lower().startswith(("unsat", "unknown")):
        return None, None

    assigns = parse_model(out)
    if obj_symbol not in assigns:  # try to pick from get-value pairs
        for m in GET_VAL_PAIR_RE.finditer(out):
            if m.group(1) == obj_symbol:
                assigns[obj_symbol] = int(m.group(2))
                break
    if obj_symbol not in assigns:
        return None, None

    best = int(assigns[obj_symbol])
    best_stdout = out

    # tighten
    while True:
        out = call_with(f"(assert (<= {obj_symbol} {best-1}))")
        if out == "timeout" or out.strip().lower().startswith(("unsat", "unknown")):
            return best, best_stdout
        assigns = parse_model(out)
        val = None
        if obj_symbol in assigns: val = int(assigns[obj_symbol])
        else:
            for m in GET_VAL_PAIR_RE.finditer(out):
                if m.group(1) == obj_symbol:
                    val = int(m.group(2)); break
        if val is None: return best, best_stdout
        best, best_stdout = val, out

# ------------------------ main ------------------------

def main():
    ap = argparse.ArgumentParser(description="Sports scheduling optimizer (channeled/offline) with Z3/CVC5 progressive tightening")
    ap.add_argument("--approach", choices=["channeled", "offline"], required=True)
    ap.add_argument("--solver",   choices=["z3", "cvc5"], required=True)
    ap.add_argument("--N", type=int, required=True, help="Even number of teams (>=4)")
    ap.add_argument("--timeout", type=int, default=300, help="Total timeout seconds")
    ap.add_argument("--outdir", default="res/SMT", help="JSON output directory")
    args = ap.parse_args()

    N = args.N
    assert N % 2 == 0 and N >= 4
    W, P = N - 1, N // 2

    os.makedirs(args.outdir, exist_ok=True)
    outpath = os.path.join(args.outdir, f"{N}.json")
    approach_name = f"{args.solver}_{args.approach}_progressive"

    t0 = time.time()

    if args.approach == "channeled":
        s, Per, Home, Opp = channeled_model_no_check(N)
        s = symmetry_breaking_channeled(N, s, Home, Per)
        add_home_bounds(s, Home, W, N)
        Obj = add_objective_vars(s, Home, W, N, obj_name="Obj")
    else:
        s, Home, Per, Light, matches = offline_approach_domains(N)
        s = symmetry_breaking_offline(N, s, Home, Per, matches)
        add_home_bounds(s, Home, W, N)
        Obj = add_objective_vars(s, Home, W, N, obj_name="Obj")

    if args.solver == "z3":
        best, m = progressive_optimize_z3(s, Obj, timeout_ms=args.timeout*1000)
        if best is None:
            payload = {approach_name: {"time": int(time.time()-t0), "optimal": False, "obj": None, "sol": []}}
            try: existing = json.load(open(outpath))
            except Exception: existing = {}
            existing.update(payload); json.dump(existing, open(outpath,"w"))
            print(f"[FAIL] {approach_name} → {outpath}")
            return

        PerG  = eval_int_grid(m, Per)
        HomeG = eval_bool_grid(m, Home)
        if args.approach == "channeled":
            OppG = eval_int_grid(m, Opp)
            sol = build_sol_from_opp_home(N, W, P, OppG, HomeG, PerG)
        else:
            sol = build_sol_from_per_home(N, W, P, PerG, HomeG)

        counts = [sum(1 for w in range(W) if HomeG[t][w]) for t in range(N)]
        obj = sum(abs(2*c - W) for c in counts)

    else:  # cvc5 external
        # materialize base SMT (no check-sat)
        base_smt = s.to_smt2()
        best, best_stdout = cvc5_progressive_optimize(base_smt, "Obj", "cvc5", args.timeout)
        if best is None:
            payload = {approach_name: {"time": int(time.time()-t0), "optimal": False, "obj": None, "sol": []}}
            try: existing = json.load(open(outpath))
            except Exception: existing = {}
            existing.update(payload); json.dump(existing, open(outpath,"w"))
            print(f"[FAIL] {approach_name} → {outpath}")
            return

        assigns = parse_model(best_stdout)
        # sizes
        T1, W1 = infer_grid_size(assigns.keys(), "Per")
        T2, W2 = infer_grid_size(assigns.keys(), "Home")
        T3, W3 = infer_grid_size(assigns.keys(), "Opp")
        T = N or T1 or T2 or T3
        W = W1 or W2 or W3
        P = T // 2
        PerG  = read_grid(assigns, "Per",  T, W, default=None)
        HomeG = read_grid(assigns, "Home", T, W, default=False)
        OppG  = read_grid(assigns, "Opp",  T, W, default=None) if T3 else None

        if args.approach == "channeled":
            sol = build_sol_from_opp_home(T, W, P, OppG, HomeG, PerG)
        else:
            sol = build_sol_from_per_home(T, W, P, PerG, HomeG)

        counts = [sum(1 if _as_bool(HomeG[t][w]) else 0 for w in range(W)) for t in range(T)]
        obj = int(sum(abs(2*c - W) for c in counts))

    elapsed = time.time() - t0
    payload = {approach_name: {"time": int(elapsed), "optimal": True, "obj": int(obj), "sol": sol}}
    try: existing = json.load(open(outpath))
    except Exception: existing = {}
    existing.update(payload); json.dump(existing, open(outpath,"w"))
    print(f"[OK] {approach_name} → {outpath}  (time={elapsed:.2f}s, obj={obj})")

if __name__ == "__main__":
    main()
