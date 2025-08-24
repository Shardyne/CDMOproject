#!/usr/bin/env python3
"""
Sports Tournament Scheduling (STS) — MILP with PuLP (CBC)
- Decision version ("feasibility"): satisfy constraints without objective.

Constraints (for even n):
  • each unordered pair of teams plays exactly once in the tournament;
  • each team plays exactly once per week (n−1 weeks);
  • each (week, period) hosts exactly one match;
  • each team appears in a fixed period at most twice across the tournament.

Output JSON (res/MIP/{n}.json) follows the requested schema.
"""
import argparse, json, math, os, sys, time
from collections import defaultdict

try:
    import pulp
except Exception as e:
    print("ERROR: PuLP non disponibile:", e, file=sys.stderr)
    sys.exit(1)

def build_model(n: int, time_limit: int = 300, seed: int = 42):
    assert n % 2 == 0 and n >= 2
    W = list(range(1, n))                  # weeks: 1..n-1
    P = list(range(1, n//2 + 1))           # periods: 1..n/2
    T = list(range(1, n+1))                # teams: 1..n

    # Decision vars: x[w,p,i,j] = 1 if in week w, period p -> i (home) vs j (away)
    x = pulp.LpVariable.dicts("x", (W, P, T, T), lowBound=0, upBound=1, cat=pulp.LpBinary)

    # Model creation
    model_name = f"STS_MILP_v1_n{n}"
    prob = pulp.LpProblem(model_name, pulp.LpMinimize)

    # Objective
    prob += 0, "dummy_objective"

    # Constraints

    # (1) Each (week, period) hosts exactly one match (orientation matters)
    for w in W:
        for p in P:
            prob += pulp.lpSum(x[w][p][i][j] for i in T for j in T if i != j) == 1, f"one_match_w{w}_p{p}"

    # (2) Each unordered pair (i<j) occurs exactly once across all weeks/periods (either orientation)
    for i in T:
        for j in T:
            if i < j: # check unique pair
                prob += pulp.lpSum(x[w][p][i][j] + x[w][p][j][i] for w in W for p in P) == 1, f"pair_{i}_{j}"

    # (3) Each team plays exactly once per week
    for i in T:
        for w in W:
            prob += pulp.lpSum(
                x[w][p][i][j] + x[w][p][j][i] for p in P for j in T if j != i
            ) == 1, f"once_per_week_team{i}_w{w}"

    # (4) Each team plays at most twice in the same period over the tournament
    for i in T:
        for p in P:
            prob += pulp.lpSum(
                x[w][p][i][j] + x[w][p][j][i] for w in W for j in T if j != i
            ) <= 2, f"period_cap_team{i}_p{p}"

    # Optional light symmetry breaking to speed-up a bit (doesn't change feasibility):
    # Fix team 1 to play in period 1 in weeks 1 and 2 (if n>=4), arbitrary orientation.
    # This is safe and mildly reduces equivalent labelings.
    if n >= 4:
        # Week 1: team 1 must appear in period 1
        prob += pulp.lpSum(x[1][1][1][j] + x[1][1][j][1] for j in T if j != 1) == 1, "sym_w1_p1_t1"
        # Week 2: team 1 must appear in period 1
        prob += pulp.lpSum(x[2][1][1][j] + x[2][1][j][1] for j in T if j != 1) == 1, "sym_w2_p1_t1"

    # Solve
    solver = pulp.PULP_CBC_CMD(msg=True, timeLimit=time_limit, threads=1, options=["-seconds", str(time_limit),"-timeMode", "elapsed", "-randomSeed", str(seed)])
    start = time.time()
    status = prob.solve(solver)
    end = time.time()
    runtime = end - start

    # Interpret status & optimality
    pulp_status = pulp.LpStatus[prob.status]
    solved_to_optimality = (pulp_status == "Optimal")
    # feasible = solved_to_optimality or (pulp_status == "Not Solved" and pulp.value(prob.objective) is not None) 
    # # feasible -> Optimal or Integer Feasible if Not Solved maybe we have a partial solution

    # Extract solution if feasible
    sol_matrix = None
    if pulp_status in ("Optimal", "Integer Feasible", "Not Solved", "Infeasible","Undefined") and pulp_status != "Infeasible" and pulp_status != "Undefined":
        if pulp_status == "Not Solved":
            has_values = any(pulp.value(v) is not None for v in prob.variables())
            if not has_values:
                sol_matrix = [] # METTI TIME 300 SOL VUOTA
        # Build (n/2) x (n-1) matrix [period][week] = [home, away]
        sol_matrix = [[None for _ in W] for __ in P]
        for w in W:
            for p in P:
                assigned = None
                for i in T:
                    for j in T:
                        if i != j and pulp.value(x[w][p][i][j]) is not None and pulp.value(x[w][p][i][j]) > 0.5:
                            assigned = [i, j]
                            break
                    if assigned: break
                if assigned is None:
                    # no assignment found at this (w,p), leave None placeholder
                    assigned = [0, 0] 
                sol_matrix[p-1][w-1] = assigned # SOL VUOTA
    else:
        sol_matrix = []

    # Compute objective value (or None)
    obj_val = None

    # Time field rules: floor(runtime). If unexpected termination without optimality, set time=300.
    floored = int(math.floor(runtime))
    time_field = floored if solved_to_optimality else time_limit

    result = {
        "time": time_field,
        "optimal": bool(solved_to_optimality),
        "obj": obj_val,
        "sol": sol_matrix
    }
    meta = {
        "pulp_status": pulp_status,
        "runtime_sec": runtime
    }
    return result, meta

def main():
    n = 14
    res_dir = os.path.join(os.path.dirname(__file__), "..", "..", "res", "MIP")
    os.makedirs(res_dir, exist_ok=True)
    out_path = os.path.join(res_dir, f"prova_{n}.json")
    # Misura tempo complessivo 
    global_start = time.time()
    result, meta = build_model(n, time_limit=300, seed=42) 
    global_end = time.time()
    total_runtime = global_end - global_start

    # Salva JSON nel formato richiesto: chiave = nome approccio
    key = f"CBC"
    payload = { key: result }
    with open(out_path, "w") as f:
        json.dump(payload, f, indent=2)

    # Stampa breve log
    print(f"[DONE] n={n} approach= CBC -> {out_path}")
    print(f"Status: {meta['pulp_status']} | optimal={result['optimal']} | obj={result['obj']}")
    print(f"Runtime (total, incl. 'presolve') = {total_runtime:.2f}s (time field written: {result['time']})")


if __name__ == "__main__":
    main()


# def main():
#     parser = argparse.ArgumentParser()
#     parser.add_argument("--n", type=int, required=True, help="Numero di squadre (pari).")
#     parser.add_argument("--approach", type=str, default="feasibility", choices=["feasibility","balance"], help="Approccio: feasibility o balance.")
#     parser.add_argument("--timeout", type=int, default=300, help="Time limit complessivo (in secondi).")
#     parser.add_argument("--seed", type=int, default=42, help="Random seed del solver (CBC).")
#     parser.add_argument("--out", type=str, default=None, help="Percorso del file JSON di output. Default: res/MIP/{n}.json")
#     args = parser.parse_args()

#     if args.n % 2 != 0 or args.n < 2:
#         print("Errore: n deve essere pari e >= 2.", file=sys.stderr)
#         sys.exit(2)

#     res_dir = os.path.join(os.path.dirname(__file__), "..", "res", "MIP")
#     os.makedirs(res_dir, exist_ok=True)
#     out_path = args.out or os.path.join(res_dir, f"{args.n}.json")

#     # Misura tempo complessivo (incluso eventuale 'pre-solving' – qui nullo)
#     global_start = time.time()
#     result, meta = build_model(args.n, args.approach, time_limit=args.timeout, seed=args.seed)
#     global_end = time.time()
#     total_runtime = global_end - global_start

#     # Salva JSON nel formato richiesto: chiave = nome approccio
#     key = f"pulp_{args.approach}"
#     payload = { key: result }
#     with open(out_path, "w") as f:
#         json.dump(payload, f, indent=2)

#     # Stampa breve log
#     print(f"[DONE] n={args.n} approach={args.approach} -> {out_path}")
#     print(f"Status: {meta['pulp_status']} | optimal={result['optimal']} | obj={result['obj']}")
#     print(f"Runtime (total, incl. 'presolve') = {total_runtime:.2f}s (time field written: {result['time']})")
