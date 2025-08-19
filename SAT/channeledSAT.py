from z3 import *
import json, os, time

def circle_method_pairs(n):
    assert n % 2 == 0 and n >= 4
    w, p = n - 1, n // 2
    fixed = 1
    others = list(range(2, n+1))
    schedule = {}
    for wk in range(1, w+1):
        arr = [fixed] + others
        pairs = [(arr[i], arr[-1 - i]) for i in range(p)]
        schedule[wk] = pairs
        others = [others[-1]] + others[:-1]
    return schedule

def solve_sts_matchSAT(N, write_json=True):
    assert N % 2 == 0 and N >= 4
    W, P = N - 1, N // 2
    teams  = list(range(1, N+1))
    weeks  = list(range(1, W+1))
    periods= list(range(1, P+1))

    def write_json(path, approach_name, time_field, optimal, obj, sol):
        os.makedirs(os.path.dirname(path), exist_ok=True)
        payload = {approach_name: {
            "time": int(time_field),
            "optimal": bool(optimal),
            "obj": (None if obj is None else int(obj)),
            "sol": sol
        }}
        with open(path, "w") as f:
            json.dump(payload, f, separators=(",", ":"), ensure_ascii=False)
        print(f"Wrote {path}")

    approach = f"z3_matchSAT_{N}"
    out_path = f"res/SAT/{N}.json"

    # -------- total timer starts here --------
    t_total0 = time.perf_counter()

    # Fixed pairings
    matches = circle_method_pairs(N)

    # Vars (all Bool)
    X = {(w,i,p): Bool(f"X_w{w}_i{i}_p{p}") for w in weeks for i in range(1,P+1) for p in periods}
    H = {(w,i):   Bool(f"H_w{w}_i{i}")     for w in weeks for i in range(1,P+1)}
    Light = {(t,p): Bool(f"Light_t{t}_p{p}") for t in teams for p in periods}
    High  = {t: Bool(f"HIGH_t{t}") for t in teams}

    s = Solver()

    # (A) match<->period bijection per week
    for w in weeks:
        for i in range(1, P+1):
            s.add(PbEq([(X[(w,i,p)], 1) for p in periods], 1))
        for p in periods:
            s.add(PbEq([(X[(w,i,p)], 1) for i in range(1, P+1)], 1))

    # (B) period profile (2,...,2,1) via Light[t,p]
    for t in teams:
        s.add(PbEq([(Light[(t,p)], 1) for p in periods], 1))
        for p in periods:
            lits = []
            for w in weeks:
                for i,(u,v) in enumerate(matches[w], start=1):
                    if t == u or t == v:
                        lits.append(X[(w,i,p)])
            s.add(Implies(Light[(t,p)],      PbEq([(l,1) for l in lits], 1)))
            s.add(Implies(Not(Light[(t,p)]), PbEq([(l,1) for l in lits], 2)))

    # (C) home-balance hard
    f = W // 2
    high_count = (N*W)//2 - N*f
    for t in teams:
        home_bits = []
        for w in weeks:
            for i,(u,v) in enumerate(matches[w], start=1):
                if t == u:
                    home_bits.append(H[(w,i)])
                elif t == v:
                    home_bits.append(Not(H[(w,i)]))
        s.add(Implies(High[t],      PbEq([(b,1) for b in home_bits], f+1)))
        s.add(Implies(Not(High[t]), PbEq([(b,1) for b in home_bits], f)))
    s.add(PbEq([(High[t],1) for t in teams], high_count))

    # (D) symmetry breaking (week 1 mapping; team 1 home)
    w1 = 1
    for i in range(1, P+1):
        s.add(X[(w1,i,i)] == True)
    i_team1 = next(i for i,(u,v) in enumerate(matches[w1], start=1) if u == 1 or v == 1)
    u, v = matches[w1][i_team1 - 1]
    s.add(H[(w1,i_team1)] == BoolVal(u == 1))

    # -------- compute full pre-solve time (pairings + constraint build) --------
    pre_elapsed = time.perf_counter() - t_total0
    if pre_elapsed >= 300.0:
        # already exceeded budget
        write_json(out_path, approach, 300, False, None, [])
        return None

    # set Z3 timeout to remainder
    rem_ms = max(1, 300000 - int(pre_elapsed * 1000))
    s.set(timeout=rem_ms)

    # -------- solve --------
    t_solve0 = time.perf_counter()
    res = s.check()
    solve_elapsed = time.perf_counter() - t_solve0
    total_elapsed = pre_elapsed + solve_elapsed
    print(f"[N={N}] result: {res}  elapsed_total={total_elapsed:.3f}s (pre={pre_elapsed:.3f}s, solve={solve_elapsed:.3f}s)")

    if res == sat:
        m = s.model()
        # Build schedule
        sol = [[None for _ in weeks] for _ in periods]
        for w in weeks:
            for p in periods:
                i = next(i for i in range(1, P+1)
                         if is_true(m.evaluate(X[(w,i,p)], model_completion=True)))
                u, v = matches[w][i - 1]
                home_first = is_true(m.evaluate(H[(w,i)], model_completion=True))
                sol[p-1][w-1] = [u, v] if home_first else [v, u]

        # objective: sum_t |2*homes(t) - W|
        homes = [0]*N
        for w_idx in range(W):
            for p_idx in range(P):
                h, a = sol[p_idx][w_idx]
                homes[h-1] += 1
        obj_val = sum(abs(2*h - W) for h in homes)

        write_json(out_path, approach, total_elapsed, True, obj_val, sol)
        return sol

    elif res == unsat:
        # decision solved: UNSAT
        write_json(out_path, approach, 0, True, None, [])
        return None

    else:  # unknown (likely timeout)
        write_json(out_path, approach, 300, False, None, [])
        try:
            print("reason_unknown:", s.reason_unknown())
        except Exception:
            pass
        return None

if __name__ == "__main__":
    solve_sts_matchSAT(24)
    # solve_sts_matchSAT(10)
    # solve_sts_matchSAT(22)
