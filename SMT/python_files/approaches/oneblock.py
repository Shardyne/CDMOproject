from z3 import *
import json
from pathlib import Path
import time

n = 10
W = n - 1           # weeks
P = n // 2          # periods per week

# A[p][w][s] : team id at period p, week w, slot s (0=home, 1=away)
A = [[[Int(f"A_{p}_{w}_{s}") for s in range(2)]
      for w in range(W)]
     for p in range(P)]

s = Solver()

# --- 1) Domain: team ids are 1..n
for p in range(P):
    for w in range(W):
        for ss in range(2):
            s.add(And(1 <= A[p][w][ss], A[p][w][ss] <= n))

# --- 2) No self match in any game
for p in range(P):
    for w in range(W):
        s.add(A[p][w][0] != A[p][w][1])

# --- 3) Once per week: all teams in week w must be distinct
for w in range(W):
    teams_in_week = [A[p][w][ss] for p in range(P) for ss in range(2)]
    s.add(Distinct(teams_in_week))

# --- 4) Unique opponents for each team across weeks
def opponent_expr_for_week(t, w):
    expr = None
    for p in range(P):
        e = If(A[p][w][0] == t, A[p][w][1],
               If(A[p][w][1] == t, A[p][w][0], 0))
        expr = e if expr is None else If(expr == 0, e, expr)
    return expr

for t in range(1, n+1):
    opps = [opponent_expr_for_week(t, w) for w in range(W)]
    s.add(Distinct(opps))

# --- 5) Period cap: at most twice in the same period per team
for t in range(1, n+1):
    for p in range(P):
        count = Sum([ If(A[p][w][0] == t, 1, 0) + If(A[p][w][1] == t, 1, 0)
                      for w in range(W) ])
        s.add(count <= 2)

# --- 6) Home/away balance: |home-away| <= 1
home_counts = [ Sum([ If(A[p][w][0] == t, 1, 0) for p in range(P) for w in range(W) ])
                for t in range(1, n+1) ]
away_counts = [ Sum([ If(A[p][w][1] == t, 1, 0) for p in range(P) for w in range(W) ])
                for t in range(1, n+1) ]
for t in range(n):
    s.add(Abs(home_counts[t] - away_counts[t]) <= 1)

# --- 7) Symmetry break
s.add(A[0][0][0] == 1, A[0][0][1] == 2)

# Solve
# --- Solve with timeout handling
start_time = time.time()
result = s.check()
elapsed_time = round(time.time() - start_time, 3)

if result == sat:
    m = s.model()

    # Week-major for printing
    weeks = []
    for w in range(W):
        week_matches = []
        for p in range(P):
            h = m[A[p][w][0]].as_long()
            a = m[A[p][w][1]].as_long()
            week_matches.append([h, a])
        weeks.append(week_matches)

    # Pretty print
    for w, matches in enumerate(weeks):
        print(f"Week {w+1}:")
        for p, match in enumerate(matches):
            print(f"  P{p+1}: {match[0]} vs {match[1]}")
        print()

    # Convert to periods-major (checker format)
    periods_major = [[weeks[w][p] for w in range(W)] for p in range(P)]

    optimal_flag = True  # You can set False if you don't guarantee optimality

elif result == unknown:
    print("Timeout reached — partial model extraction if possible.")
    m = s.model()
    if m:  # Might be None
        weeks = []
        for w in range(W):
            week_matches = []
            for p in range(P):
                h = m[A[p][w][0]].as_long()
                a = m[A[p][w][1]].as_long()
                week_matches.append([h, a])
            weeks.append(week_matches)
        periods_major = [[weeks[w][p] for w in range(W)] for p in range(P)]
    else:
        periods_major = []
    optimal_flag = False

else:
    print("Unsat — no solution found.")
    periods_major = []
    optimal_flag = False

# --- Save JSON
import os

# Example directory path
directory = "smt-lib_files/oneblock_approach"

with open(os.path.join(directory, f"oneblock_{n}.smt2"), "w") as f:
    f.write("(set-logic QF_LIA)\n")
    f.write("(set-option :produce-models true)\n")
    f.write(s.to_smt2())
    f.write("(get-model)\n")
