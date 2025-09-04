from z3 import *
import json, os, time

# ---------- Circle method: fixed pairings per week ----------
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


def solve_sts_matchSMT(N, write_json=True):
    assert N % 2 == 0 and N >= 4
    W, P = N - 1, N // 2
    teams  = list(range(1, N+1))     # 1..N (for printing)
    weeks1 = list(range(1, W+1))     # 1..W (for matches dict)
    weeks0 = list(range(W))          # 0..W-1 (for Per/Home matrices)
    periods= list(range(1, P+1))     # 1..P

    def write_json(path, approach_name, time_field, decided, obj, sol):
        os.makedirs(os.path.dirname(path), exist_ok=True)
        new_entry = {
            approach_name: {
                "time": float(time_field),
                "decided": bool(decided),
                "obj": (None if obj is None else int(obj)),
                "sol": sol
            }
        }

        # if the JSON file exists, load and update
        if os.path.exists(path):
            with open(path, "r") as f:
                try:
                    payload = json.load(f)
                except json.JSONDecodeError:
                    payload = {}
        else:
            payload = {}

        # update with new entry
        payload.update(new_entry)

        # save back
        with open(path, "w") as f:
            json.dump(payload, f, separators=(",", ":"), ensure_ascii=False, indent=2)

        print(f"Updated {path} with key {approach_name}")

    approach = f"z3_offline_{N}"
    out_path = f"res/SMT/{N}.json"

    # -------- total timer starts here --------
    t_total0 = time.perf_counter()

    # Fixed pairings (who plays whom each week)
    matches = circle_method_pairs(N)  # dict: week(1..W) -> list of P pairs (u,v) with 1-based team IDs

    # ---------- Decision variables ----------
    # Per[t0][w0] in {1..P}: period assigned to team (t0+1) in week (w0+1)
    Per  = [[Int(f"Per_{t+1}_{w+1}")  for w in weeks0] for t in range(N)]
    # Home[t0][w0] in {0,1}: whether team (t0+1) is home in week (w0+1)
    Home = [[Int(f"Home_{t+1}_{w+1}") for w in weeks0] for t in range(N)]
    # Light_t in {1..P}: the unique period where team t appears once (others twice)
    Light = [Int(f"Light_{t+1}") for t in range(N)]

    s = Solver()

    # ---------- Domains ----------
    for t0 in range(N):
        s.add(And(1 <= Light[t0], Light[t0] <= P))
        for w0 in weeks0:
            s.add(And(1 <= Per[t0][w0], Per[t0][w0] <= P))
            s.add(Or(Home[t0][w0] == 0, Home[t0][w0] == 1))

    # ---------- Build opponent map from fixed pairings ----------
    # opp[w0][t0] = opponent (1..N) of team (t0+1) in week (w0+1)
    opp = [[None]*N for _ in weeks0]
    for w0 in weeks0:
        for (u, v) in matches[w0+1]:
            opp[w0][u-1] = v
            opp[w0][v-1] = u

    # ---------- (A) Pairing correctness per week ----------
    # Each team shares its period with its designated opponent (and with nobody else).
    for w0 in weeks0:
        for t0 in range(N):
            o0 = opp[w0][t0] - 1  # 0-based opponent index
            s.add(Per[t0][w0] == Per[o0][w0])  # same period as opponent
            for u0 in range(N):
                if u0 != t0 and u0 != o0:
                    s.add(Per[t0][w0] != Per[u0][w0])  # no other team shares their period

    # (Optional but consistent) exactly 2 teams per period per week
    for w0 in weeks0:
        for p in periods:
            s.add(Sum([If(Per[t0][w0] == p, 1, 0) for t0 in range(N)]) == 2)

    # ---------- (B) Period profile (2,...,2,1) per team ----------
    # For each team t0 and period p:
    #   count_tp := #weeks with Per[t0][w0] == p
    #   If Light[t0] == p -> count_tp == 1; else count_tp == 2
    for t0 in range(N):
        for p in periods:
            count_tp = Sum([If(Per[t0][w0] == p, 1, 0) for w0 in weeks0])
            s.add(If(Light[t0] == p, count_tp == 1, count_tp == 2))

    # ---------- (C) Home-balance ----------
    # For each match (u,v) in week w0, exactly one is home.
    for w0 in weeks0:
        for (u, v) in matches[w0+1]:
            s.add(Home[u-1][w0] + Home[v-1][w0] == 1)

    f = W // 2
    # Each team has either f or f+1 homes; exactly N/2 teams get f+1.
    home_t = [Int(f"Homes_{t+1}") for t in range(N)]
    for t0 in range(N):
        s.add(home_t[t0] == Sum([Home[t0][w0] for w0 in weeks0]))
        s.add(Or(home_t[t0] == f, home_t[t0] == f+1))
    s.add(Sum(home_t) == N*f + (N//2))

    # ---------- (D) Symmetry breaking ----------
    # Week 1: fix period labels to identity: pair i -> period i
    w1 = 0
    for i, (u, v) in enumerate(matches[1], start=1):
        s.add(Per[u-1][w1] == i)
        s.add(Per[v-1][w1] == i)
    # Pin team 1 (ID=1) to be home in week 1, consistent with the pair
    i_team1 = next(i for i, (u, v) in enumerate(matches[1], start=1) if u == 1 or v == 1)
    u1, v1 = matches[1][i_team1-1]
    s.add(Home[0][w1] == (1 if u1 == 1 else 0))

    # -------- compute full pre-solve time (pairings + constraint build) --------
    pre_elapsed = time.perf_counter() - t_total0
    if pre_elapsed >= 300.0:
        # already exceeded budget
        if write_json:
            write_json(out_path, approach, 300.0, False, None, [])
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

        # Build schedule: sol[p-1][w-1] = [homeID, awayID]
        sol = [[None for _ in weeks1] for _ in periods]
        for w0 in weeks0:
            # for each period p, find the two teams assigned there
            for p in periods:
                teams_in_p = []
                for t0 in range(N):
                    val = m.evaluate(Per[t0][w0], model_completion=True).as_long()
                    if val == p:
                        teams_in_p.append(t0)
                assert len(teams_in_p) == 2, f"Week {w0+1}, period {p} not = 2 teams: {teams_in_p}"

                a0, b0 = teams_in_p
                ha = m.evaluate(Home[a0][w0], model_completion=True).as_long()
                hb = m.evaluate(Home[b0][w0], model_completion=True).as_long()
                assert ha + hb == 1, "Home flags must sum to 1 per match"

                if ha == 1:
                    home_id, away_id = a0+1, b0+1
                else:
                    home_id, away_id = b0+1, a0+1
                sol[p-1][w0] = [home_id, away_id]

        # objective: sum_t |2*homes(t) - W|
        homes = [0]*N
        for t0 in range(N):
            homes[t0] = m.evaluate(home_t[t0], model_completion=True).as_long()
        obj_val = sum(abs(2*h - W) for h in homes)

        if write_json:
            write_json(out_path, approach, total_elapsed, True, obj_val, sol)
        return sol

    elif res == unsat:
        if write_json:
            write_json(out_path, approach, total_elapsed, True, None, [])
        return None

    else:  # unknown (likely timeout)
        if write_json:
            write_json(out_path, approach, 300.0, False, None, [])
        try:
            print("reason_unknown:", s.reason_unknown())
        except Exception:
            pass
        return None


if __name__ == "__main__":
    solve_sts_matchSMT(20)
    # solve_sts_matchSAT(10)
    # solve_sts_matchSAT(22)
