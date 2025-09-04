import json, time
from z3 import is_true

def build_solution_table(opp, hom, per, N, W, P):
    """
    opp[t][w] : int in 1..N (!= t+1)
    hom[t][w] : bool  (True=home, False=away)
    per[t][w] : int in 1..P
    Return: sol[P][W] with each entry [home_team_id, away_team_id] (1-based).
    """
    # rows = periods (1..P), cols = weeks (0..W-1)
    sol = [[None for _ in range(W)] for _ in range(P)]

    # bucket teams by (week, period)
    by_wp = {(w, p): [] for w in range(W) for p in range(1, P+1)}
    for t in range(N):
        for w in range(W):
            p = per[t][w]
            by_wp[(w, p)].append(t)

    # build pairs
    for w in range(W):
        for p in range(1, P+1):
            teams = by_wp[(w, p)]
            if len(teams) != 2:
                raise ValueError(f"Week {w}, Period {p} has {len(teams)} teams (expected 2).")
            a, b = teams  # team indices 0-based
            ha, hb = hom[a][w], hom[b][w]

            if ha and not hb:
                pair = [a+1, b+1]
            elif hb and not ha:
                pair = [b+1, a+1]
            else:
                # This shouldn't happen if you enforced XOR(Home[a,w], Home[b,w]).
                # As a safety fallback, orient using Opp (arbitrary but deterministic).
                if opp[a][w] == b+1 and opp[b][w] == a+1:
                    pair = [a+1, b+1]
                else:
                    raise ValueError(f"Inconsistent Home/Opp at week {w}, period {p}: teams={teams}, "
                                     f"homes=({ha},{hb}), opp=({opp[a][w]},{opp[b][w]})")
            sol[p-1][w] = pair

    # sanity
    for p in range(P):
        for w in range(W):
            h, a = sol[p][w]
            assert 1 <= h <= N and 1 <= a <= N and h != a

    return sol


def z3_to_int_grid(m, Z):
    """Evaluate a 2D array of Int Z3 vars -> Python ints."""
    T, W_ = len(Z), len(Z[0])
    out = [[m.evaluate(Z[t][w]).as_long() for w in range(W_)] for t in range(T)]
    return out


def z3_to_bool_grid(m, Z):
    """Evaluate a 2D array of Bool Z3 vars -> Python bools."""
    T, W_ = len(Z), len(Z[0])
    out = [[is_true(m.evaluate(Z[t][w])) for w in range(W_)] for t in range(T)]
    return out


def build_solution_from_model(m, Opp, Home, Per, N, W, P):
    """Extract Opp/Home/Per from model and return the checker-format sol."""
    opp = z3_to_int_grid(m, Opp)         # Int
    hom = z3_to_bool_grid(m, Home)       # Bool
    per = z3_to_int_grid(m, Per)         # Int
    return build_solution_table(opp, hom, per, N, W, P)


def make_result_json(sol, approach_name="z3_opt", runtime_sec=0, optimal=True, obj_val=None):
    """Pack result dict."""
    return {
        approach_name: {
            "time": int(runtime_sec),
            "optimal": bool(optimal),
            "obj": (None if obj_val is None else int(obj_val)),
            "sol": sol
        }
    }
