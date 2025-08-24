import json, time

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

