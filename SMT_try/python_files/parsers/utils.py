import json, time, os 
from z3 import *

def z3_max(exprs):
    m = exprs[0]
    for e in exprs[1:]:
        m = If(e > m, e, m)
    return m

# Compute symbolic Min
def z3_min(exprs):
    m = exprs[0]
    for e in exprs[1:]:
        m = If(e < m, e, m)
    return m


def build_solution_table(Opp, Home, Per, N, W, P):
    """
    Opp[t][w] in 1..N (!= t+1), Home[t][w] in {0,1} (1=home), Per[t][w] in 1..P.
    Returns sol: list of length P; each item is a list of length W; entries are [home, away].
    """
    # Prepare empty table: rows = periods, cols = weeks
    sol = [[None for _ in range(W)] for _ in range(P)]

    # Fill a week/period bucket with the two teams assigned there
    by_wp = {(w, p): [] for w in range(W) for p in range(1, P+1)}
    for t in range(N):
        for w in range(W):
            p = Per[t][w]
            by_wp[(w, p)].append(t)

    # Build the [home, away] pairs
    for w in range(W):
        for p in range(1, P+1):
            teams = by_wp[(w, p)]
            assert len(teams) == 2, f"Week {w}, Period {p} has {len(teams)} teams (expected 2)."
            a, b = teams[0], teams[1]  # 0-based team indices
            # Decide home/away using Home flags
            if Home[a][w] == 1 and Home[b][w] == 0:
                pair = [a+1, b+1]
            elif Home[a][w] == 0 and Home[b][w] == 1:
                pair = [b+1, a+1]
            else:
                # Fallback: use Opp to decide direction if flags are inconsistent
                if Opp[a][w] == b+1:
                    pair = [a+1, b+1]  # treat a as "home"
                elif Opp[b][w] == a+1:
                    pair = [b+1, a+1]
                else:
                    raise ValueError(f"Inconsistent Home/Opp at week {w}, period {p}: teams={teams}")
            sol[p-1][w] = pair

    # Final sanity checks
    for p in range(P):
        for w in range(W):
            assert sol[p][w] is not None, f"Missing match at period {p+1}, week {w}"
            h, a = sol[p][w]
            assert 1 <= h <= N and 1 <= a <= N and h != a

    return sol

def z3_to_int_grid(m, Z):
    """Helper: evaluate a 2D Z3 array Z[t][w] to a plain Python int grid."""
    T = len(Z)
    W = len(Z[0])
    out = [[int(m.evaluate(Z[t][w]).as_long()) for w in range(W)] for t in range(T)]
    return out

def build_solution_from_model(m, Opp, Home, Per, N, W, P):
    """Extract Opp/Home/Per from model and return the checker-format sol."""
    opp = z3_to_int_grid(m, Opp)
    hom = z3_to_int_grid(m, Home)
    per = z3_to_int_grid(m, Per)
    return build_solution_table(opp, hom, per, N, W, P)



def make_result_json(sol, approach_name="z3_opt", runtime_sec=0, optimal=True, obj_val=None):
    """
    sol: the P×W matrix from build_solution_table
    Returns a dict ready to dump as JSON under the required schema.
    """
    data = {
        approach_name: {
            "time": int(runtime_sec),        # floor seconds
            "optimal": bool(optimal),
            "obj": (None if obj_val is None else int(obj_val)),
            "sol": sol
        }
    }
    return data


def channeled_model_no_check(N):
    W = N - 1
    P = N // 2

    # Define Z3 variables
    Per = [[Int(f"Per_{t}_{w}") for w in range(W)] for t in range(N)]
    Home = [[Bool(f"Home_{t}_{w}") for w in range(W)] for t in range(N)]
    Opp = [[Int(f"Opp_{t}_{w}") for w in range(W)] for t in range(N)]

    s = Solver()

    # Domains & basic constraints
    for t in range(N):
        for w in range(W):
            s.add(And(1 <= Per[t][w], Per[t][w] <= P))
            s.add(And(1 <= Opp[t][w], Opp[t][w] <= N))
            s.add(Opp[t][w] != t + 1)

    # Channeling
    for t in range(N):
        for k in range(N):
            if t == k: continue
            for w in range(W):
                s.add(Implies(Opp[t][w] == k + 1,
                              And(Per[t][w] == Per[k][w], Opp[k][w] == t + 1)))
                s.add(Implies(And(Per[t][w] == Per[k][w], Opp[k][w] == t + 1),
                              Opp[t][w] == k + 1))
                s.add(Implies(Opp[t][w] == k + 1, Xor(Home[t][w], Home[k][w])))

    # Core constraints
    for t in range(N):
        s.add(Distinct([Opp[t][w] for w in range(W)]))

    for w in range(W):
        for p in range(1, P+1):
            s.add(Sum([If(Per[t][w] == p, 1, 0) for t in range(N)]) == 2)

    for t in range(N):
        for p in range(1, P + 1):
            s.add(Sum([If(Per[t][w] == p, 1, 0) for w in range(W)]) <= 2)

    return s, Per, Home, Opp


def smt_obj_manual(N, Home, obj, counts, solver):
    """
    N: number of teams
    W: number of weeks
    obj: target total objective (sum of abs deviations)
    counts: current home counts per team
    """
    W=N-1
    count_home = [Sum([If(Home[t][w], 1, 0) for w in range(W)]) for t in range(N)]
    for t in range(N):
        # if high then sum to a W//2+1 else W//2
        solver.add(count_home[t]<=max(counts))
        solver.add(count_home[t]>=min(counts))
    ##the number of high should be half of the teams
    #s.add(Sum([If(High[t], 1, 0) for t in range(N)]) )
        solver.add(Sum([Abs(2*count_home[t] - W) for t in range(N)])<obj)

    return solver
    
def symmetry_breaking_constraints(N, solver, Home, Per, Opp):
    """
    Generate symmetry-breaking constraints for SMT2 given N teams.
    Returns a string with SMT2 assertions.
    """
    W = N - 1
    P = N // 2
    
    # Break global home/away flip
    solver.add(Home[0][0] == True)
    
    # Canonicalize week 0 layout: pairsolver (0,N-1), (1,N-2), ..., (P-1,P)
    # by pinning the period choice of thosolvere teamsolver in week 0
    for p in range(P):
        a, b = p, N - 1 - p
        solver.add(Per[a][0] == p + 1)
        solver.add(Per[b][0] == p + 1)
    
    # break period solverymmetry by fixing decreasolvering periodsolver for all weeksolver 
    for w in range(W-1):
        solver.add(Opp[0][w] > Opp[0][w+1])

    return solver

