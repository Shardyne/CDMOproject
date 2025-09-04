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




def build_model(
    n: int,
    time_limit: int = 300,
    seed: int = 42,
    num_team_anchors: int = 1,
    random_team_anchors: bool = False,
    num_pair_anchors: int = 0,
    random_pair_anchors: bool = False,
    fix_first_week: bool = True,
):
    assert n % 2 == 0 and n >= 2
    random.seed(seed)


    W = list(range(1, n)) # weeks: 1..n-1
    P = list(range(1, n//2 + 1)) # periods: 1..n/2
    T = list(range(1, n+1)) # teams: 1..n

    # Decision vars: x[(w,p,i,j)] for i != j only (oriented)
    x = {}
    for w in W:
        for p in P:
            for i in T:
                for j in T:
                    if i != j:
                        x[(w,p,i,j)] = pulp.LpVariable(f"x_{w}_{p}_{i}_{j}", cat=pulp.LpBinary)

    # Model creation
    model_name = f"STS_MILP_anchors_n{n}"
    prob = pulp.LpProblem(model_name, pulp.LpMinimize)

    # Dummy objective (feasibility)
    prob += 0, "dummy_objective"

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
    # Anchors: teams in slots and/or specific pairs in slots
    # ---------------------------
    # generate list of available slots
    all_slots = [(w,p) for w in W for p in P]

    # (A) Team anchors

    team_anchors = []
    max_team_anchors = min(num_team_anchors, len(all_slots))
    if max_team_anchors > 0:
        if random_team_anchors:
            chosen_slots = random.sample(all_slots, max_team_anchors)
            chosen_teams = random.sample(T, max_team_anchors)
        else:
            # deterministic: pick first slots and first teams
            chosen_slots = all_slots[:max_team_anchors]
            chosen_teams = T[:max_team_anchors]
        for (slot, team) in zip(chosen_slots, chosen_teams):
            (w,p) = slot
            team_anchors.append((team, w, p))
            prob += pulp.lpSum(x[(w,p,team,j)] + x[(w,p,j,team)] for j in T if j != team) == 1, f"anchor_team_{team}_w{w}_p{p}"

    # (B) Pair anchors (fix pair {i,j} in a specific slot)

    pair_anchors = []
    possible_pairs = [(i,j) for i in T for j in T if i < j]
    max_pair_anchors = min(num_pair_anchors, len(all_slots) - len(team_anchors))
    if max_pair_anchors > 0:
        if random_pair_anchors:
            chosen_pairs = random.sample(possible_pairs, max_pair_anchors)
            # choose slots avoiding those used by team anchors
            free_slots = [s for s in all_slots if s not in [(w,p) for (_,w,p) in team_anchors]]
            chosen_slots = random.sample(free_slots, max_pair_anchors)
        else:
            chosen_pairs = possible_pairs[:max_pair_anchors]
            free_slots = [s for s in all_slots if s not in [(w,p) for (_,w,p) in team_anchors]]
            chosen_slots = free_slots[:max_pair_anchors]
        for (pair, slot) in zip(chosen_pairs, chosen_slots):
            (i,j) = pair
            (w,p) = slot
            pair_anchors.append((i,j,w,p))
            # force that slot (w,p) hosts pair {i,j} in either orientation
            prob += x[(w,p,i,j)] + x[(w,p,j,i)] == 1, f"anchor_pair_{i}_{j}_w{w}_p{p}"

    # ---------------------------
    # Fix composition of first week via circle method (sparse, safe)
    # ---------------------------
    if fix_first_week:
        pairs_week1 = compute_circle_pairs(n)
        # force each pair to appear somewhere in week 1
        for (a,b) in pairs_week1:
            prob += pulp.lpSum(x[(1,p,a,b)] + x[(1,p,b,a)] for p in P) == 1, f"circle_w1_pair_{a}_{b}"

    # ---------------------------
    # Tie-breakers: primary + secondary signature combined for weeks and for periods
    # use continuous auxiliary variables so solver won't branch on them
    # ---------------------------
    # weights: choose small, discriminative weights; we use primary = (i+j), secondary = i
    # combined_sig = primary * B + secondary, with B = n+1 (safe upper bound for secondary sum scale)

    B = n + 1

    sig_week_primary = {}
    sig_week_secondary = {}
    sig_week_comb = {}
    for w in W:
        sig_week_primary[w] = pulp.LpVariable(f"sig_w_primary_{w}", lowBound=0, cat=pulp.LpContinuous)
        sig_week_secondary[w] = pulp.LpVariable(f"sig_w_secondary_{w}", lowBound=0, cat=pulp.LpContinuous)
        sig_week_comb[w] = pulp.LpVariable(f"sig_w_comb_{w}", lowBound=0, cat=pulp.LpContinuous)
        prob += sig_week_primary[w] == pulp.lpSum((i + j) * x[(w,p,i,j)] for p in P for i in T for j in T if i != j), f"define_sig_w_primary_{w}"
        prob += sig_week_secondary[w] == pulp.lpSum(i * x[(w,p,i,j)] for p in P for i in T for j in T if i != j), f"define_sig_w_secondary_{w}"
        prob += sig_week_comb[w] == sig_week_primary[w] * B + sig_week_secondary[w], f"define_sig_w_comb_{w}"

    for idx in range(len(W) - 1):
        w = W[idx]
        wp = W[idx + 1]
        prob += sig_week_comb[w] <= sig_week_comb[wp], f"order_weeks_comb_{w}_{wp}"

    # Period signatures (aggregate over weeks)

    sig_per_primary = {}
    sig_per_secondary = {}
    sig_per_comb = {}
    for p in P:
        sig_per_primary[p] = pulp.LpVariable(f"sig_p_primary_{p}", lowBound=0, cat=pulp.LpContinuous)
        sig_per_secondary[p] = pulp.LpVariable(f"sig_p_secondary_{p}", lowBound=0, cat=pulp.LpContinuous)
        sig_per_comb[p] = pulp.LpVariable(f"sig_p_comb_{p}", lowBound=0, cat=pulp.LpContinuous)
        prob += sig_per_primary[p] == pulp.lpSum((i + j) * x[(w,p,i,j)] for w in W for i in T for j in T if i != j), f"define_sig_p_primary_{p}"
        prob += sig_per_secondary[p] == pulp.lpSum(i * x[(w,p,i,j)] for w in W for i in T for j in T if i != j), f"define_sig_p_secondary_{p}"
        prob += sig_per_comb[p] == sig_per_primary[p] * B + sig_per_secondary[p], f"define_sig_p_comb_{p}"

    for idx in range(len(P) - 1):
        p = P[idx]
        pp = P[idx + 1]
        prob += sig_per_comb[p] <= sig_per_comb[pp], f"order_periods_comb_{p}_{pp}"



    # ---------------------------
    # Solve
    # ---------------------------
    solver = pulp.PULP_CBC_CMD(msg=True, timeLimit=time_limit, threads=1,
                               options=["-seconds", str(time_limit), "-timeMode", "elapsed", "-randomSeed", str(seed)])
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

    # Output fields
    obj_val = None
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
    n = 6
    res_dir = os.path.join(os.path.dirname(__file__), "..", "..", "res", "MIP")
    os.makedirs(res_dir, exist_ok=True)
    out_path = os.path.join(res_dir, f"v2_b_{n}.json")
    global_start = time.time()
    result, meta = build_model(n, time_limit=300, seed=42)
    global_end = time.time()
    total_runtime = global_end - global_start

    key = "CBC_sym"
    payload = {key: result}
    with open(out_path, "w") as f:
        json.dump(payload, f, indent=2)

    print(f"[DONE] n={n} approach= CBC_sym -> {out_path}")
    print(f"Status: {meta['pulp_status']} | optimal={result['optimal']} | obj={result['obj']}")
    print(f"Runtime (total, incl. 'presolve') = {total_runtime:.2f}s (time field written: {result['time']})")



