#!/usr/bin/env python3
"""

PROVA SENZA SYMMETRI SE è MEGLIO IL FATTO DI TOGLIERE VARIABILI I = I VISTO CHE CON I SYMMETRY PERFORMA PEGGIO DI MOLTO


STS MILP (PuLP/CBC) — versione con riduzione variabili i==j e symmetry-breaking canonico
- rimuove variabili x[w,p,i,i]
- aggiunge symmetry-breaking "safe" (ordinamenti canonicali) su settimane e periodi
- aggiunge un semplice symmetry-breaking sull'orientazione nella prima settimana

Nota: questi symmetry-breaking sono progettati per essere "safe" in senso che
per ogni soluzione esistente esiste una permutazione equivalente che rispetta
le condizioni di canonicalizzazione (quindi non eliminano intere classi di soluzioni
non-isomorfe). Sono comunque euristiche: rompere ulteriori simmetrie può richiedere
vincoli più complessi (lessicografici) o tecniche avanzate.
"""
import argparse, json, math, os, sys, time
import random
from collections import defaultdict

try:
    import pulp
except Exception as e:
    print("ERROR: PuLP non disponibile:", e, file=sys.stderr)
    sys.exit(1)


def compute_circle_pairs(n: int):
    """Simple canonical pairing for week 1 (one-factorization style).
    For even n, returns n/2 disjoint pairs: (1,n), (2,n-1), (3,n-2), ...
    This is a standard, sparse, safe choice for fixing week1 composition.
    """
    pairs = []
    for i in range(1, n//2 + 1):
        pairs.append((i, n + 1 - i))
    return pairs

def build_model(n: int, time_limit: int = 300, seed: int = 0):

    random.seed(seed)

    assert n % 2 == 0 and n >= 2
    W = list(range(1, n))                  # weeks: 1..n-1
    P = list(range(1, n//2 + 1))           # periods: 1..n/2
    T = list(range(1, n+1))                # teams: 1..n

    # Decision vars: x[(w,p,i,j)] for i != j only
    x = {}
    for w in W:
        for p in P:
            for i in T:
                for j in T:
                    if i != j:
                        x[(w,p,i,j)] = pulp.LpVariable(f"x_{w}_{p}_{i}_{j}", cat="Binary")

    # Model creation
    model_name = f"STS_MILP_symbreak_n{n}"
    prob = pulp.LpProblem(model_name, pulp.LpMinimize)

    # Objective
    # home and away counts per team
    # h_i - a_i captured via aux var d_i >= |h_i - a_i|
    d = pulp.LpVariable.dicts("imbalance", T, lowBound=0, cat=pulp.LpContinuous) # cat=pulp.LpInteger)
    # Define h_i - a_i
    home_minus_away = {
        i: (
            pulp.lpSum(x[(w,p,i,j)] for w in W for p in P for j in T if j != i)
            - pulp.lpSum(x[(w,p,j,i)] for w in W for p in P for j in T if j != i)
        )
        for i in T
    }

    for i in T:
        prob += home_minus_away[i] <= d[i], f"imb_pos_{i}"
        prob += -home_minus_away[i] <= d[i], f"imb_neg_{i}"

    prob += pulp.lpSum(d[i] for i in T), "min_total_imbalance"

    # (1) Each (week, period) hosts exactly one match (orientation matters)
    for w in W:
        for p in P:
            prob += pulp.lpSum(x[(w,p,i,j)] for i in T for j in T if i != j) == 1, f"one_match_w{w}_p{p}"

    # (2) Each unordered pair (i<j) occurs exactly once (either orientation)
    for i in T:
        for j in T:
            if i < j:
                prob += pulp.lpSum(x[(w,p,i,j)] + x[(w,p,j,i)] for w in W for p in P) == 1, f"pair_{i}_{j}"

    # (3) Each team plays exactly once per week
    for i in T:
        for w in W:
            prob += pulp.lpSum(
                x[(w,p,i,j)] + x[(w,p,j,i)] for p in P for j in T if j != i
            ) == 1, f"once_per_week_team{i}_w{w}"

    # (4) Each team plays at most twice in the same period over the tournament
    for i in T:
        for p in P:
            prob += pulp.lpSum(
                x[(w,p,i,j)] + x[(w,p,j,i)] for w in W for j in T if j != i
            ) <= 2, f"period_cap_team{i}_p{p}"

    # ---------------------------
    # Symmetry breaking (canonical representatives)
    # ---------------------------
    # (A) Force team 1 to appear in week 1, period 1 (light, safe)
    # k = random.randint(1, n) 4
    # if n > 4:
    #     k = 1
    #     prob += pulp.lpSum(x[(1,1,k,j)] + x[(1,1,j,k)] for j in T if j != k) == 1, "sym_team1_w1_p1"

    # (B) Canonical ordering of weeks by a signature: sum of team IDs in the week
    #     signature_week[w] = sum_{p,i,j} (i + j) * x[w,p,i,j]
    #     then enforce signature_week[w] <= signature_week[w+1]

    # signature_week = {}
    # for w in W:
    #     # New derivative/ausiliar variable set to continuous, even if integer to not let it use it for branching
    #     signature_week[w] = pulp.LpVariable(f"sig_w_{w}", lowBound=0, cat=pulp.LpContinuous)
    #     prob += signature_week[w] == pulp.lpSum((i + j) * x[(w,p,i,j)] for p in P for i in T for j in T if i != j), f"define_sig_w_{w}"
    # for idx in range(len(W) - 1):
    #     w = W[idx]
    #     wp = W[idx + 1]
    #     prob += signature_week[w] <= signature_week[wp], f"order_weeks_{w}_{wp}" # new var natural and continuos

    # (C) Canonical ordering of periods globally (period label permutation across all weeks)
    #     signature_period[p] = sum_{w,i,j} (i + j) * x[w,p,i,j]
    #     enforce signature_period[p] <= signature_period[p+1]
    # signature_period = {}
    # for p in P:
    #     signature_period[p] = pulp.LpVariable(f"sig_p_{p}", lowBound=0, cat=pulp.LpContinuous)
    #     prob += signature_period[p] == pulp.lpSum((i + j) * x[(w,p,i,j)] for w in W for i in T for j in T if i != j), f"define_sig_p_{p}"
    # for idx in range(len(P) - 1):
    #     p = P[idx]
    #     pp = P[idx + 1]
    #     prob += signature_period[p] <= signature_period[pp], f"order_periods_{p}_{pp}"
    
    # (ex D) eliminato
    # (E) Fix composition of first week via circle method (sparse, safe)

    # pairs_week1 = compute_circle_pairs(n)
    # # force each pair to appear somewhere in week 1
    # for (a,b) in pairs_week1:
    #     prob += pulp.lpSum(x[(1,p,a,b)] + x[(1,p,b,a)] for p in P) == 1, f"circle_w1_pair_{a}_{b}"



    # ---------------------------
    # Solve
    # ---------------------------
    solver = pulp.PULP_CBC_CMD(msg=True, timeLimit=time_limit, threads=1, options=[f"RandomS {seed}"])
    start = time.time()
    status = prob.solve(solver)
    end = time.time()
    runtime = end - start

    # Interpret status & optimality
    pulp_status = pulp.LpStatus[prob.status]
    solved_to_optimality = (pulp_status == "Optimal")

    # Extract solution if feasible or if incumbent exists
    sol_matrix = None
    has_values = any(pulp.value(v) is not None for v in prob.variables())
    if has_values and pulp_status not in ("Infeasible", "Undefined"):
        sol_matrix = [[None for _ in W] for __ in P]
        for w in W:
            for p in P:
                assigned = None
                for i in T:
                    for j in T:
                        if i != j and pulp.value(x[(w,p,i,j)]) is not None and pulp.value(x[(w,p,i,j)]) > 0.5:
                            assigned = [i, j]
                            break
                    if assigned:
                        break
                if assigned is None:
                    assigned = [0, 0]
                sol_matrix[p-1][w-1] = assigned
    else:
        sol_matrix = []


    obj_val = int(round(pulp.value(prob.objective)))
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


if __name__ == '__main__':
    
    for x in [0, 1234567, 1756566010, 26, 42]:
        n = 10
        res_dir = os.path.join(os.path.dirname(__file__), "..", "..", "res", "MIP", "v2_seed_balanced")
        os.makedirs(res_dir, exist_ok=True)
        out_path = os.path.join(res_dir, f"v2_{x}_{n}.json")
        global_start = time.time()
        result, meta = build_model(n, time_limit=300, seed=x)
        global_end = time.time()
        total_runtime = global_end - global_start

        key = "CBC_i_different_j"
        payload = {key: result}
        with open(out_path, "w") as f:
            json.dump(payload, f, indent=2)

        print(f"[DONE] n={n} approach= {key} -> {out_path}")
        print(f"Status: {meta['pulp_status']} | optimal={result['optimal']} | obj={result['obj']}")
        print(f"Runtime (total, incl. 'presolve') = {total_runtime:.2f}s (time field written: {result['time']})")
