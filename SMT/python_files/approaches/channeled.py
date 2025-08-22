from z3 import *
import numpy as np
import time, json
from utils import *  # expects build_solution_from_model, make_result_json

# ---------- Parameters ----------
N = 16
W = N - 1
P = N // 2

# ---------- Variables ----------
Per  = [[Int(f"Per_{t}_{w}")  for w in range(W)] for t in range(N)]
# Home flag for each team and week: 0/1
Home = [[Int(f"Home_{t}_{w}") for w in range(W)] for t in range(N)]
# Opponent IDs (1..N), t+1 is forbidden; fully channeled to Per later
Opp  = [[Int(f"Opp_{t}_{w}")  for w in range(W)] for t in range(N)]

s = Solver()
s.set(timeout=300_000)  # 300 seconds

# ---------- Domains ----------
for t in range(N):
    for w in range(W):
        s.add(And(1 <= Per[t][w], Per[t][w] <= P))
        s.add(Or(Home[t][w] == 0, Home[t][w] == 1))
        s.add(And(1 <= Opp[t][w], Opp[t][w] <= N))
        s.add(Opp[t][w] != (t + 1))

# ---------- Pairing channeling: Opp <-> Per + mutuality ----------
# Opp[t,w] must be some k != t (totality)
for t in range(N):
    for w in range(W):
        s.add(Or([Opp[t][w] == (k + 1) for k in range(N) if k != t]))

# Mutuality + same period + home/away XOR when they meet
for t in range(N):
    for k in range(N):
        if k == t:
            continue
        for w in range(W):
            # (Opp[t,w] == k+1)  <->  (Per[t,w] == Per[k,w]  AND  Opp[k,w] == t+1)
            s.add((Opp[t][w] == (k + 1)) == And(Per[t][w] == Per[k][w], Opp[k][w] == (t + 1)))
            # If they meet in week w, one is home, the other away
            s.add(Implies(Opp[t][w] == (k + 1), Home[t][w] + Home[k][w] == 1))

# ---------- Core constraints ----------
# (1) Each team plays each other at most/exactly once → Distinct opponents across weeks
for t in range(N):
    s.add(Distinct([Opp[t][w] for w in range(W)]))

# (2) Weekly structure: exactly 2 teams per period per week
for w in range(W):
    for p in range(1, P + 1):
        s.add(Sum([If(Per[t][w] == p, 1, 0) for t in range(N)]) == 2)

# (3) At most twice per team in the same period over the tournament
for t in range(N):
    for p in range(1, P + 1):
        s.add(Sum([If(Per[t][w] == p, 1, 0) for w in range(W)]) <= 2)

# ---------- Balance (optimal) as HARD constraints ----------
# For odd W, each team must have 5 or 6 homes (here W=11 -> 5 or 6)
count_home_expr = [Sum([Home[t][w] for w in range(W)]) for t in range(N)]
for t in range(N):
    s.add(Abs(2 * count_home_expr[t] - W) <= 1)

# (Optional) exact split: x teams have ceil(W/2) homes, the rest floor(W/2)
# This enforces the theoretical optimum distribution and can help speed up.
f = W // 2
x = W * (N // 2) - N * f  # number of teams that must have f+1 homes
High = [Bool(f"High_{t}") for t in range(N)]
for t in range(N):
    s.add(count_home_expr[t] == f + If(High[t], 1, 0))
s.add(Sum([If(High[t], 1, 0) for t in range(N)]) == x)

# ---------- Symmetry breaking ----------
# Break global home/away flip
s.add(Home[0][0] == 1)

# Canonicalize week 0 layout: pairs (0,N-1), (1,N-2), ..., (P-1,P)
# by pinning the period choice of those teams in week 0
for p in range(P):
    a, b = p, N - 1 - p
    s.add(Per[a][0] == p + 1)
    s.add(Per[b][0] == p + 1)

# Mild stabilization of week labels: team 0’s periods non-decreasing
for w in range(W - 1):
    s.add(Per[0][w] <= Per[0][w + 1])

# ---------- Solve ----------
start = time.time()
res = s.check()
elapsed = time.time() - start

if res == sat:
    m = s.model()

    # Evaluate homes to compute the objective (sum |home-away|)
    count_home = [
        sum(1 for w in range(W) if m.evaluate(Home[t][w]).as_long() == 1)
        for t in range(N)
    ]
    obj_val = int(sum(abs(2 * np.array(count_home) - W)))  # optimal should be N for odd W

    # Build solution matrix using your helper
    # (Opp is consistent with Per, so build_solution_from_model can rely on either)
    sol = build_solution_from_model(m, Opp, Home, Per, N, W, P)

    res_json = make_result_json(
        sol,
        "z3_sat",               # approach name
        int(elapsed),                      # floor as per spec
        optimal=True,                      # decision version solved; and optimal balance enforced
        obj_val=obj_val
    )
    

    print(f"SAT in {elapsed:.2f}s, obj={obj_val}")
else:
    # unknown (timeout) or unsat
    print(res)
    res_json = make_result_json(
        [],
        "z3_sat",               # approach name
        int(elapsed),                      # floor as per spec
        optimal=True,                      # decision version solved; and optimal balance enforced
        obj_val=None
    )
print(res_json)
# Write SMT-LIB2 file
# --- Save JSON
#import os
#
## Example directory path
#directory = "SMT/smt-lib_files/channeled_approach"
#
#with open(os.path.join(directory, f"channeled_{N}.smt2"), "w") as f:
#    f.write("(set-logic QF_LIA)\n")
#    f.write("(set-option :produce-models true)\n")
#    f.write(s.to_smt2())
#    f.write("(get-model)\n")