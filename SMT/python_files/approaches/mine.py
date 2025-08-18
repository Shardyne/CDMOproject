from z3 import *
import numpy as np
from SMT.python_files.parsers.utils import *

# variables
N = 18
W = N - 1           
P = N // 2 

# define the problem variables

# Period
Per = [[Int(f"Per_{t}_{w}") for w in range(W)]
      for t in range(N)]

# home and away
Home = [[Int(f"Home_{t}_{w}") for w in range(W)]
      for t in range(N)]

# opponent array
Opp = [[Int(f"Opp_{t}_{w}") for w in range(W)]
      for t in range(N)]

# initialise the solver
s=Solver()


# domains
for t in range(N):
    for w in range(W):
        s.add(And(1<=Per[t][w], Per[t][w]<=P))
        s.add(And(1<=Opp[t][w], Opp[t][w]<=N))
        s.add(Or(Home[t][w]==0, Home[t][w]==1))
        s.add(Opp[t][w] != t + 1)
        

# constraints

# 1) Inverse constraint
for t in range(N):
    for k in range(N):
        if t==k:
            continue
        for w in range(W):
            s.add(Implies(Opp[t][w]==(k+1), Opp[k][w]==(t+1))) # if one is against the other then the reverse should also be true
            s.add(Implies(Opp[t][w]==(k+1), Home[t][w]+Home[k][w]==1)) #only one at home of the 2
            s.add(Implies(Opp[t][w]==(k+1), Per[t][w]==Per[k][w])) # if opponents then same period

# 2) every team plays with every other team only once
for t in range(N):
    s.add(Distinct([Opp[t][w] for w in range(W)]))

# 3) every team plays once a week (there should be just two periods with the same value in the same week);
for w in range(W):
    for p in range(1, P+1):
        s.add(Sum([If(Per[t][w]==p, 1, 0) for t in range(N)])==2)

#4) every team plays at most twice in the same period over the tournament.
for t in range(N):
    for p_id in range(1, P + 1):                
        s.add(Sum([If(Per[t][w] == p_id, 1, 0) for w in range(W)]) <= 2)

#5) objective function
count_home = [ Sum([If(Home[t][w] == 1, 1, 0) for w in range(W)]) for t in range(N) ]
for t in range(N):
    s.add(Abs(2*count_home[t] - W) <= 1)


## Symmetry breaking
s.add(Home[0][0] == 1)  # or fix the first game’s orientation
# week 0: (0, N-1), (1, N-2), ..., (P-1, P)
for p in range(P):
    a, b = p, N-1-p
    for t in range(N):
        s.add(Implies(t==a, Per[t][0] == p+1))
        s.add(Implies(t==b, Per[t][0] == p+1))

MinTeam = [[Int(f"MinTeam_{w}_{p}") for p in range(P)] for w in range(W)]
for w in range(W):
    for p in range(1, P+1):
        # MinTeam[w][p-1] equals the smaller team index assigned to period p in week w
        # Encode via big-M or with Pair[t,k,w] booleans if you have them
        pass
    s.add(Distinct(MinTeam[w]))               # optional
    s.add(And([MinTeam[w][p] < MinTeam[w][p+1] for p in range(P-1)]))

for w in range(W-1):
    s.add(Per[0][w] <= Per[0][w+1])  # non-decreasing periods for team 0



#start = time.time()
#s.set(timeout=300_000)
#if s.check() == sat:
#    m = s.model()
#    sol = build_solution_from_model(m, Opp, Home, Per, N, W, P)
#    count_home = [ sum(1 for w in range(W) if m.evaluate(Home[t][w]).as_long() == 1)
#               for t in range(N) ]
#    obj_val = int(sum(abs(2*np.array(count_home) - W)))
#    res = make_result_json(sol, "z3_opt", time.time()-start, optimal=True, obj_val=obj_val)
#    with open(f"res/SMT/{N}.json", "w") as f:
#        json.dump(res, f)
#else:
#    print('unsat')


import os

# Example directory path
directory = "smt-lib_files/not_channeled_approach"

with open(os.path.join(directory, f"not_channeled_{N}.smt2"), "w") as f:
    f.write("(set-logic QF_LIA)\n")
    f.write("(set-option :produce-models true)\n")
    f.write(s.to_smt2())
    f.write("(get-model)\n")