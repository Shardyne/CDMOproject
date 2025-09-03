from z3 import *
import numpy as np
from utils import *

# variables
N = 6
W = N - 1           
P = N // 2 

# define the problem variables

# Period
Per = [[Int(f"Per_{t}_{w}") for w in range(W)]
      for t in range(N)]

# home and away
Home = [[Bool(f"Home_{t}_{w}") for w in range(W)]
      for t in range(N)]

# opponent array
Opp = [[Int(f"Opp_{t}_{w}") for w in range(W)]
      for t in range(N)]

# Create variable High
obj=Int('obj')

# initialise the solver and set the timeout
s = Solver()

# domains + teams cannot play against themself
for t in range(N):
    for w in range(W):
        s.add(And(1<=Per[t][w], Per[t][w]<=P))
        s.add(And(1<=Opp[t][w], Opp[t][w]<=N))
        s.add(Opp[t][w] != t + 1)

# channeling betwen period and opposition for faster propagation
for t in range(N):
  for k in range(N): # implied constraint
    if t==k:
        continue
    for w in range(W):
      s.add(Implies(Opp[t][w]==k+1, And(Per[t][w]==Per[k][w], Opp[k][w]==t+1)))
      s.add(Implies(And(Per[t][w]==Per[k][w], Opp[k][w]==t+1), Opp[t][w]==k+1))
      s.add(Implies(Opp[t][w]==k+1, Xor(Home[t][w], Home[k][w])))

# Break global home/away flip
s.add(Home[0][0])

# Canonicalize week 0 layout: pairs (0,N-1), (1,N-2), ..., (P-1,P)
# by pinning the period choice of those teams in week 0
for p in range(P):
    a, b = p, N - 1 - p
    s.add(Per[a][0] == p + 1)
    s.add(Per[b][0] == p + 1)

# break period symmetry by fixing decreasing periods for all weeks 
for w in range(W-1):
    s.add(Opp[0][w] > Opp[0][w+1]) 

# core constraints

# every team plays with every other team only once
for t in range(N):
    s.add(Distinct([Opp[t][w] for w in range(W)]))

# every team plays once a week (there should be just two periods with the same value in the same week);
for w in range(W):
    for p in range(1, P+1):
        s.add(Sum([If(Per[t][w]==p, 1, 0) for t in range(N)])==2)

# every team plays at most twice in the same period over the tournament.
for t in range(N):
    for p in range(1, P + 1):                
        s.add(Sum([If(Per[t][w] == p, 1, 0) for w in range(W)]) <= 2)

#5) objective function + constraint on the number of teams that have the maorty of the game at home
count_home = [Sum([If(Home[t][w], 1, 0) for w in range(W)]) for t in range(N)]
ite_exprs = [
    If(2*count_home[t] - W >= 0, 2*count_home[t]-W, -(2*count_home[t]-W))
    for t in range(N)
]
s.add(Sum(ite_exprs) == obj)


#start = time.time()
#s.set(timeout=300_000)
#if s.check() == sat:
#    e=time.time()-start
#    m = s.model()
#    sol = build_solution_from_model(m, Opp, Home, Per, N, W, P)
#    count_home = [ sum(1 for w in range(W) if m.evaluate(Home[t][w]))
#               for t in range(N) ]
#    obj_val = int(sum(abs(2*np.array(count_home) - W)))
#    res = make_result_json(sol, "z3", e, optimal=True, obj_val=obj_val)
#    with open(f"res/SMT1/{N}.json", "w") as f:
#        json.dump(res, f)
#    print(res)
#else:
#    e=time.time()-start
#    res = make_result_json([], "z3", e, optimal=True, obj_val=None)
#    with open(f"res/SMT1/{N}.json", "w") as f:
#        json.dump(res, f)
#    print(res)
#

import os       

# Example directory path
directory = "SMT_try/bv"

with open(os.path.join(directory, f"def_{N}.smt2"), "w") as f:
    f.write("(set-logic QF_LIA)\n")
    f.write(s.to_smt2())
    f.write("\n(declare-fun obj () Int)\n")
    f.write('(minimize obj)\n')
    f.write("(get-objectives)\n")