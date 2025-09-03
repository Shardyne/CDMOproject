from z3 import *

def channeled_model_no_check(N):
    W = N - 1
    P = N // 2

    # Define Z3 variables
    Per = [[Int(f"Per_{t}_{w}") for w in range(W)] for t in range(N)]
    Home = [[Bool(f"Home_{t}_{w}") for w in range(W)] for t in range(N)]
    Opp = [[Int(f"Opp_{t}_{w}") for w in range(W)] for t in range(N)]

    solver = Solver()

    # Domains & basic constraints
    for t in range(N):
        for w in range(W):
            solver.add(And(1 <= Per[t][w], Per[t][w] <= P))
            solver.add(And(1 <= Opp[t][w], Opp[t][w] <= N))
            solver.add(Opp[t][w] != t + 1)

    # Channeling
    for t in range(N):
        for k in range(N):
            if t == k: continue
            for w in range(W):
                solver.add(Implies(Opp[t][w] == k + 1,
                              And(Per[t][w] == Per[k][w], Opp[k][w] == t + 1)))
                solver.add(Implies(And(Per[t][w] == Per[k][w], Opp[k][w] == t + 1),
                              Opp[t][w] == k + 1))
                solver.add(Implies(Opp[t][w] == k + 1, Xor(Home[t][w], Home[k][w])))


    # Core constraints
    for t in range(N):
        solver.add(Distinct([Opp[t][w] for w in range(W)]))

    for w in range(W):
        for p in range(1, P+1):
            solver.add(Sum([If(Per[t][w] == p, 1, 0) for t in range(N)]) == 2)

    for t in range(N):
        for p in range(1, P + 1):
            solver.add(Sum([If(Per[t][w] == p, 1, 0) for w in range(W)]) <= 2)

    return solver, Per, Home, Opp

def symmetry_breaking_constraints(N, solver, Home, Per, Opp):
    """
    Generate symmetry-breaking constraints for SMT2 given N teams.
    Returns a string with SMT2 assertions.
    """
    W = N - 1
    P = N // 2
    
    # Break global home/away flip
    solver.add(Home[0][0])
    
    # Canonicalize week 0 layout: pairsolver (0,N-1), (1,N-2), ..., (P-1,P)
    # by pinning the period choice of thosolvere teamsolver in week 0
    for p in range(P):
        a, b = p, N - 1 - p
        solver.add(Per[a][0] == p + 1)
        solver.add(Per[b][0] == p + 1)
    
    # break period solverymmetry by fixing decreasolvering periodsolver for all weeksolver 
    for w in range(W-1):
        solver.add(Opp[0][w] > Opp[0][w+1])
    
    solver.add(Opp[0][0] == N)

    return solver

# function used for imposing the optimization constraints for both approaches
def smt_obj_manual(N, Home, obj, counts, solver, offline=True):
    W=N-1
    
    # count the number of home games
    count_home = [Sum([If(Home[t][w], 1, 0) for w in range(W)]) for t in range(N)]
    diffs=[]
    for t in range(N):

        # implied constraint to go with direct the search
        solver.add(count_home[t]<=max(counts))
        solver.add(count_home[t]>=min(counts))
        if offline:
            diff = Int(f"diff_{t}")
            diffs.append(diff)
            solver.add(diff >= 2*count_home[t] - W)
            solver.add(diff >= -(2*count_home[t] - W))
            solver.add(diff <= W)

    # different way for offline and channeled
    if offline:
        solver.add(Sum(diffs) < obj)
        solver.add(Sum(diffs) >= N)
    else:
        solver.add(Sum([Abs(2*count_home[t] - W) for t in range(N)]) <obj)
        solver.add(Sum([Abs(2*count_home[t] - W) for t in range(N)]) >=N)

    # return the solver for the sy
    return solver, Home



# create the matches for the warm start
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

def offline_approach_domains(N):
    assert N % 2 == 0 and N >= 4
    W, P = N - 1, N // 2    
    weeks0 = list(range(W))          
    periods= list(range(1, P+1))   

    # create the fixed pairings
    matches = circle_method_pairs(N) 

    # Variables
    Per  = [[Int(f"Per_{t}_{w}")  for w in weeks0] for t in range(N)]
    Home = [[Bool(f"Home_{t}_{w}") for w in weeks0] for t in range(N)]
    solver = Solver()

    # ---------- Domains ----------
    for t0 in range(N):
        for w0 in weeks0:
            solver.add(And(1 <= Per[t0][w0], Per[t0][w0] <= P))
        
    
    # ---------- Build opponent map from fixed pairings ----------
    # opp[w0][t0] = opponent (1..N) of team (t0+1) in week (w0+1)
    opp = [[None]*N for _ in weeks0]
    for w0 in weeks0:
        for (u, v) in matches[w0+1]:
            opp[w0][u-1] = v
            opp[w0][v-1] = u

    # Each team shares its period with its designated opponent (and with nobody else).
    for w0 in weeks0:
        for t0 in range(N):
            o0 = opp[w0][t0] - 1  # 0-based opponent index
            solver.add(Per[t0][w0] == Per[o0][w0])  # same period as opponent
            for u0 in range(N):
                if u0 != t0 and u0 != o0:
                    solver.add(Per[t0][w0] != Per[u0][w0])  # no other team shares their period 

    # Implied constraint
    for w0 in weeks0:
        for p in periods:
            solver.add(Sum([If(Per[t0][w0] == p, 1, 0) for t0 in range(N)]) == 2)

    # Max 2 games in each period for each team
    for t in range(N):
        for p in range(1, P+1):                
            solver.add(Sum([If(Per[t][w] == p, 1, 0) for w in range(W)]) <= 2)

    # One of the two teams is home or away 
    for w0 in weeks0:
        for (u,v) in matches[w0+1]:
            solver.add(Xor(Home[u-1][w0], Home[v-1][w0]))  # exactly one is True

    return solver, Home, Per, matches


def symmetry_breaking_constraints_offline(N, solver, Home, Per, matches):
    
    # Break global home/away flip

    
    solver.add(Home[0][0])
    
    # Canonicalize week 0 layout: pairsolver (0,N-1), (1,N-2), ..., (P-1,P)
    # by pinning the period choice of thosolvere teamsolver in week 0
    for i, (u, v) in enumerate(matches[1], start=1):  # 1-based team IDs
        solver.add(Per[u-1][0] == i)
        solver.add(Per[v-1][0] == i)
    

    return solver