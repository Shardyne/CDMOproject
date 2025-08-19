from z3 import *
import json, os, time

# ------------------------- Utility: circle method pairings -------------------------
def circle_method_pairs(n):
    """
    Return { week -> [(u1,v1), ..., (uP,vP)] } using the classic round-robin (1-factorization)
    with team 1 fixed and others rotated. n must be even. P = n//2, weeks = n-1.
    """
    assert n % 2 == 0 and n >= 4
    w, p = n - 1, n // 2
    fixed = 1
    others = list(range(2, n+1))
    schedule = {}
    for wk in range(1, w+1):
        arr = [fixed] + others
        pairs = [(arr[i], arr[-1 - i]) for i in range(p)]
        schedule[wk] = pairs
        # rotate the "others" list right by 1
        others = [others[-1]] + others[:-1]
    return schedule  # dict: week -> list of length P

# ------------------------- Main solver -------------------------
def solve_sts_matchSAT(N, write_json=True):
    assert N % 2 == 0 and N >= 4
    W = N - 1
    P = N // 2
    teams  = list(range(1, N+1))
    weeks  = list(range(1, W+1))
    periods= list(range(1, P+1))

    # Fixed opponents by week via circle method
    matches = circle_method_pairs(N)   # week -> [(u,v)] length P

    # Variables (all Booleans)
    X = {(w,i,p): Bool(f"X_w{w}_i{i}_p{p}") for w in weeks for i in range(1,P+1) for p in periods}
    H = {(w,i):   Bool(f"H_w{w}_i{i}")     for w in weeks for i in range(1,P+1)}
    Light = {(t,p): Bool(f"Light_t{t}_p{p}") for t in teams for p in periods}
    High  = {t: Bool(f"HIGH_t{t}") for t in teams}

    s = Solver()
    s.set(timeout=300000)  # 300 seconds in ms

    # (A) Bijection match<->period per week
    for w in weeks:
        # each match chooses exactly one period
        for i in range(1, P+1):
            s.add(PbEq([(X[(w,i,p)], 1) for p in periods], 1))
        # each period hosts exactly one match
        for p in periods:
            s.add(PbEq([(X[(w,i,p)], 1) for i in range(1, P+1)], 1))

    # (B) Period profile per team: exactly once in its "light" period, twice in all others
    for t in teams:
        # exactly one light period for team t
        s.add(PbEq([(Light[(t,p)], 1) for p in periods], 1))
        for p in periods:
            # list of (week,match-index) where team t plays
            lits = []
            for w in weeks:
                for i,(u,v) in enumerate(matches[w], start=1):
                    if t == u or t == v:
                        lits.append(X[(w,i,p)])
            # Light -> 1 usage; Not(Light) -> 2 usages in that period
            s.add(Implies(Light[(t,p)],       PbEq([(l,1) for l in lits], 1)))
            s.add(Implies(Not(Light[(t,p)]),  PbEq([(l,1) for l in lits], 2)))

    # (C) Home-balance: W is odd => each team has floor(W/2) or ceil(W/2) homes
    f = W // 2                       # floor(W/2)
    high_count = (N*W)//2 - N*f      # #teams with ceil(W/2) homes
    for t in teams:
        home_bits = []
        for w in weeks:
            for i,(u,v) in enumerate(matches[w], start=1):
                if t == u:
                    home_bits.append(H[(w,i)])          # True => u home
                elif t == v:
                    home_bits.append(Not(H[(w,i)]))     # False => v home
        # High -> ceil(W/2), ~High -> floor(W/2)
        s.add(Implies(High[t],       PbEq([(b,1) for b in home_bits], f+1)))
        s.add(Implies(Not(High[t]),  PbEq([(b,1) for b in home_bits], f)))
    s.add(PbEq([(High[t],1) for t in teams], high_count))

    # (D) Symmetry breaking
    # D1: In week 1, fix match-to-period mapping i -> p=i
    w1 = 1
    for i in range(1, P+1):
        s.add(X[(w1,i,i)] == True)
    # D2: Team 1 is home in its week-1 match (break global H/A flip)
    i_team1 = next(i for i,(u,v) in enumerate(matches[w1], start=1) if u == 1 or v == 1)
    u, v = matches[w1][i_team1 - 1]
    s.add(H[(w1,i_team1)] == BoolVal(u == 1))

    # ---- Solve with timeout handling ----
    t0 = time.perf_counter()
    res = s.check()
    elapsed = time.perf_counter() - t0
    print(f"[N={N}] result: {res}  elapsed: {elapsed:.3f}s")

    def write_json(path, approach_name, time_field, optimal, obj, sol):
        os.makedirs(os.path.dirname(path), exist_ok=True)
        payload = {approach_name: {
            "time": int(time_field),   # floor per spec
            "optimal": bool(optimal),
            "obj": (None if obj is None else int(obj)),
            "sol": sol
        }}
        with open(path, "w") as f:
            json.dump(payload, f, separators=(",", ":"), ensure_ascii=False)
        print(f"Wrote {path}")

    approach = f"z3_matchSAT_{N}"
    out_path = f"res/SAT/{N}.json"

    if res == sat:
        # ----- build solution ONLY when SAT -----
        m = s.model()

        # Build schedule matrix sol[period-1][week-1] = [home, away]
        sol = [[None for _ in weeks] for _ in periods]
        for w in weeks:
            for p in periods:
                # IMPORTANT: use is_true(...) when reading Bool from the model
                i = next(i for i in range(1, P+1)
                         if is_true(m.evaluate(X[(w,i,p)], model_completion=True)))
                u, v = matches[w][i - 1]
                home_first = is_true(m.evaluate(H[(w,i)], model_completion=True))
                home, away = (u, v) if home_first else (v, u)
                sol[p-1][w-1] = [home, away]

        # Compute objective: sum_t |2*homes(t) - W|
        homes = [0]*N
        for w_idx in range(W):
            for p_idx in range(P):
                h, a = sol[p_idx][w_idx]
                homes[h-1] += 1
        obj_val = sum(abs(2*h - W) for h in homes)

        write_json(out_path, approach_name=approach,
                   time_field=elapsed, optimal=True, obj=obj_val, sol=sol)
        return sol

    elif res==unsat:
        # ----- timeout/unsat: DO NOT read model; write the "no solutin" JSON -----
        # Project convention: time = 300 <=> optimal = false
        write_json(out_path, approach_name=approach,
                   time_field=0, optimal=True, obj=None, sol=[])
        if res == unknown:
            try:
                print("reason_unknown:", s.reason_unknown())
            except Exception:
                pass
        return None
    elif res==unknown:
        # ----- timeout/unsat: DO NOT read model; write the "no solution" JSON -----
        # Project convention: time = 300 <=> optimal = false
        write_json(out_path, approach_name=approach,
                   time_field=300, optimal=False, obj=None, sol=[])
        if res == unknown:
            try:
                print("reason_unknown:", s.reason_unknown())
            except Exception:
                pass
        return None

# ------------------------- Run examples -------------------------
if __name__ == "__main__":
    # Example runs (pick one)
    solve_sts_matchSAT(24)
    # solve_sts_matchSAT(10)
    # solve_sts_matchSAT(22)
