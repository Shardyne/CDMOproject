#!/usr/bin/env python3
from z3 import *
import json, os, time

# ---------- helpers (model -> python) ----------
def z3_to_int_grid(m, X):
    T, W = len(X), len(X[0])
    return [[m.evaluate(X[t][w], model_completion=True).as_long() for w in range(W)] for t in range(T)]

def z3_to_bool_grid(m, X):
    T, W = len(X), len(X[0])
    return [[is_true(m.evaluate(X[t][w], model_completion=True)) for w in range(W)] for t in range(T)]

def z3_to_int_list(m, X):
    return [m.evaluate(x, model_completion=True).as_long() for x in X]

def build_solution_table(Per, Home, N, W, P):
    """Return P×W with 1-based team IDs [home, away], using Per/Home only."""
    sol = [[None for _ in range(W)] for _ in range(P)]
    # bucket teams by (w,p)
    for w in range(W):
        buckets = {p: [] for p in range(1, P+1)}
        for t in range(N):
            p = Per[t][w]
            buckets[p].append(t)
        for p in range(1, P+1):
            teams = buckets[p]
            if len(teams) != 2:
                raise ValueError(f"Week {w}, period {p} has {len(teams)} teams (expected 2).")
            a, b = teams
            ha, hb = Home[a][w], Home[b][w]
            if ha and not hb:
                sol[p-1][w] = [a+1, b+1]
            elif hb and not ha:
                sol[p-1][w] = [b+1, a+1]
            else:
                # fallback (shouldn't happen if XOR is enforced)
                sol[p-1][w] = [a+1, b+1]
    return sol

# ---------- schedule (1-based team IDs) ----------
def circle_method_pairs(n):
    assert n % 2 == 0 and n >= 4
    w, p = n - 1, n // 2
    fixed = 1
    others = list(range(2, n+1))
    schedule = {}
    for wk in range(1, w+1):
        arr = [fixed] + others
        pairs = [(arr[i], arr[-1 - i]) for i in range(p)]
        schedule[wk] = pairs  # pairs are 1-based team IDs
        others = [others[-1]] + others[:-1]
    return schedule

# ---------- checker ----------
def check_solution(N, W, P, matches, Per, Home, Light):
    """
    Per (T×W ints in 1..P), Home (T×W bools), Light (T ints in 1..P)
    matches: dict 1..W -> list of (u,v) with u,v in 1..N
    Returns: (ok:bool, report:dict)
    """
    violations = []

    # Domains
    for t in range(N):
        if not (1 <= Light[t] <= P):
            violations.append(f"Light[{t}]={Light[t]} out of 1..{P}")
        for w in range(W):
            p = Per[t][w]
            if not (1 <= p <= P):
                violations.append(f"Per[{t}][{w}]={p} out of 1..{P}")
            # Home is already a bool grid

    # Pair correctness + XOR(home) per scheduled match
    for w in range(W):
        for (u, v) in matches[w+1]:  # u,v are 1-based; arrays are 0-based
            u0, v0 = u-1, v-1
            if Per[u0][w] != Per[v0][w]:
                violations.append(f"Pairing mismatch: week {w}, Per[{u0}][{w}]={Per[u0][w]} != Per[{v0}][{w}]={Per[v0][w]}")
            if Home[u0][w] == Home[v0][w]:
                violations.append(f"Home XOR violated: week {w}, teams {u0},{v0} have same Home")

    # Exactly 2 teams per (w,p)
    for w in range(W):
        counts = {p:0 for p in range(1, P+1)}
        for t in range(N):
            counts[Per[t][w]] += 1
        for p in range(1, P+1):
            if counts[p] != 2:
                violations.append(f"Week {w}, period {p} has {counts[p]} teams")

    # Period profile (2,...,2,1) per team
    for t in range(N):
        per_count = {p:0 for p in range(1, P+1)}
        for w in range(W):
            per_count[Per[t][w]] += 1
        for p in range(1, P+1):
            need = 1 if Light[t] == p else 2
            if per_count[p] != need:
                violations.append(f"Team {t}, period {p} count={per_count[p]} (need {need})")

    # Symmetry breaking checks (optional)
    # Home[0][0] == True
    if not Home[0][0]:
        violations.append("Symmetry: Home[0][0] should be True")
    # Week 0 period labels pinned to pair indices (from matches[1])
    for i, (u, v) in enumerate(matches[1], start=1):
        u0, v0 = u-1, v-1
        if Per[u0][0] != i or Per[v0][0] != i:
            violations.append(f"Symmetry: week0 Per mismatch at pair #{i} -> ({u0},{v0})")

    # Objective (sum_t |2*home_t - W|)
    home_counts = [sum(1 for w in range(W) if Home[t][w]) for t in range(N)]
    obj = sum(abs(2*c - W) for c in home_counts)

    ok = len(violations) == 0
    report = {
        "ok": ok,
        "violations": violations,
        "home_counts": home_counts,
        "obj": obj
    }
    return ok, report

# ---------- main solver ----------
def solve_sts_matchSMT(N, write_json=True):
    assert N % 2 == 0 and N >= 4
    W, P = N - 1, N // 2
    weeks0 = list(range(W))          # 0..W-1
    periods = list(range(1, P+1))    # 1..P

    t_total0 = time.perf_counter()

    # Fixed pairings
    matches = circle_method_pairs(N)  # 1-based

    # Vars
    Per  = [[Int(f"Per_{t+1}_{w+1}")  for w in weeks0] for t in range(N)]  # values 1..P
    Home = [[Bool(f"Home_{t+1}_{w+1}") for w in weeks0] for t in range(N)]
    Light= [Int(f"Light_{t+1}") for t in range(N)]
    s = Solver()

    # Domains
    for t in range(N):
        s.add(And(1 <= Light[t], Light[t] <= P))
        for w in weeks0:
            s.add(And(1 <= Per[t][w], Per[t][w] <= P))

    # Opponent map (derived from fixed schedule)
    opp = [[None]*N for _ in weeks0]  # values 1..N
    for w in weeks0:
        for (u, v) in matches[w+1]:
            opp[w][u-1] = v
            opp[w][v-1] = u

    # (A) Pairing correctness + uniqueness
    for w in weeks0:
        for t in range(N):
            o = opp[w][t] - 1  # 0-based
            s.add(Per[t][w] == Per[o][w])      # paired teams share period
            for u in range(N):
                if u != t and u != o:
                    s.add(Per[t][w] != Per[u][w])  # no one else in that period
    # exactly 2 per (w,p)
    for w in weeks0:
        for p in periods:
            s.add(Sum([If(Per[t][w] == p, 1, 0) for t in range(N)]) == 2)

    # (B) Period profile (2,...,2,1)
    for t in range(N):
        for p in periods:
            cnt_tp = Sum([If(Per[t][w] == p, 1, 0) for w in weeks0])
            s.add(If(Light[t] == p, cnt_tp == 1, cnt_tp == 2))

    # (C) One home per match (XOR)
    for w in weeks0:
        for (u, v) in matches[w+1]:
            s.add(Xor(Home[u-1][w], Home[v-1][w]))

    count_home = [Sum([If(Home[t][w], 1, 0) for w in range(W)]) for t in range(N)]
    for t in range(N):
        # if high then sum to a W//2+1 else W//2
        s.add(count_home[t]<=4)
        s.add(count_home[t]>=2)
    ##the number of high should be half of the teams
    #s.add(Sum([If(High[t], 1, 0) for t in range(N)]) )
    s.add(Sum([Abs(2*count_home[t] - W) for t in range(N)])<8)

    # (D) Symmetry breaking
    s.add(Home[0][0])  # team 1 (id=1) home in week 1 (w=0)
    for i, (u, v) in enumerate(matches[1], start=1):
        s.add(Per[u-1][0] == i)
        s.add(Per[v-1][0] == i)

    # time budget for build
    pre_elapsed = time.perf_counter() - t_total0
    if pre_elapsed >= 300.0:
        return 'timeout'

    # Z3 timeout
    rem_ms = max(1, 300000 - int(pre_elapsed * 1000))
    s.set(timeout=rem_ms)

    # Optional: dump SMT2
    os.makedirs('SMT/bv', exist_ok=True)
    with open(os.path.join('SMT/bv', f"offline_{N}.smt2"), "w") as f:
        f.write("(set-logic QF_LIA)\n")
        f.write("(set-option :produce-models true)\n")
        f.write("(set-option :timeout 300000)\n")
        f.write(s.to_smt2())
        f.write("(get-model)\n")

    # Solve
    t_solve0 = time.perf_counter()
    res = s.check()
    solve_elapsed = time.perf_counter() - t_solve0
    total_elapsed = pre_elapsed + solve_elapsed
    print(f"[N={N}] result: {res}  elapsed_total={total_elapsed:.3f}s (pre={pre_elapsed:.3f}s, solve={solve_elapsed:.3f}s)")

    if res != sat:
        return {"status": str(res), "time": total_elapsed}

    # Extract model
    m = s.model()
    PerG   = z3_to_int_grid(m, Per)    # 1..P
    HomeG  = z3_to_bool_grid(m, Home)  # bool
    LightG = z3_to_int_list(m, Light)  # 1..P

    # Check
    ok, report = check_solution(N, W, P, matches, PerG, HomeG, LightG)

    # Build solution table and objective
    sol = build_solution_table(PerG, HomeG, N, W, P)
    obj = report["obj"]
    if not ok:
        print("[CHECK] violations:")
        for v in report["violations"][:20]:
            print(" -", v)
        if len(report["violations"]) > 20:
            print(f" ... and {len(report['violations'])-20} more")

    # Pack result
    result = {
        "status": "sat",
        "time": total_elapsed,
        "ok": ok,
        "obj": obj,
        "home_counts": report["home_counts"],
        "sol": sol
    }
    print(obj)
    print(report["home_counts"])
    return result

# ---------- run ----------
if __name__ == "__main__":
    out = solve_sts_matchSMT(6)
