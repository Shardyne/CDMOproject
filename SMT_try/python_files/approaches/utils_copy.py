import json, time
from z3 import *
# utils_0idx_1val.py
import re, subprocess, time, argparse, tempfile
from utils_copy import *
from collections import defaultdict


# ---------- model parsing ----------
DEF_FUN_ANY_RE = re.compile(r"\(define-fun\s+([A-Za-z0-9_]+)\s+\(\)\s+([A-Za-z0-9_]+)\s+([^\s\)]+)\)", re.I)
GET_VAL_PAIR_RE = re.compile(r"\(\s*([A-Za-z0-9_]+)\s+(true|false|-?\d+)\s*\)", re.I)

def _coerce_lit(sort: str, lit: str):
    s, v = sort.lower(), lit.lower()
    if s == "bool": return v == "true"
    try: return int(lit)
    except ValueError: raise ValueError(f"Unsupported literal for sort {sort}: {lit}")

def parse_model(stdout: str) -> dict:
    vals = {}
    for m in DEF_FUN_ANY_RE.finditer(stdout):
        name, sort, lit = m.group(1), m.group(2), m.group(3)
        vals[name] = _coerce_lit(sort, lit)
    if vals: return vals
    for m in GET_VAL_PAIR_RE.finditer(stdout):
        name, tok = m.group(1), m.group(2)
        vals[name] = (tok.lower() == "true") if tok.lower() in ("true","false") else int(tok)
    return vals

# ---------- grid helpers (0-based names only) ----------
def infer_grid_size(varnames, prefix):
    """Var names like Per_t_w with t,w 0-based -> sizes = max+1."""
    tw, pat = [], re.compile(rf"^{re.escape(prefix)}_(\d+)_(\d+)$")
    for v in varnames:
        m = pat.match(v)
        if m: tw.append((int(m.group(1)), int(m.group(2))))
    if not tw: return None, None
    T = max(t for t,_ in tw) + 1
    W = max(w for _,w in tw) + 1
    return T, W

def read_grid(assigns, prefix, T, W, default=None):
    g = [[default for _ in range(W)] for _ in range(T)]
    for t in range(T):
        for w in range(W):
            k = f"{prefix}_{t}_{w}"
            if k in assigns: g[t][w] = assigns[k]
    return g

def _as_bool(x):  # accepts bool or 0/1
    return x if isinstance(x, bool) else bool(int(x))

# ---------- reconstruction ----------
def build_sol_from_per_home(T, W, P, Per, Home):
    """
    Per[t][w] in 1..P, Home[t][w] in Bool.
    Returns P×W with 1-based team IDs [home, away].
    """
    sol = [[None for _ in range(W)] for _ in range(P)]
    for w in range(W):
        buckets = defaultdict(list)
        for t in range(T):
            p = Per[t][w]
            if p is None: raise ValueError(f"Missing Per[{t}][{w}]")
            buckets[p].append(t)
        for p in range(1, P+1):
            teams = buckets.get(p, [])
            if len(teams) != 2:
                raise ValueError(f"Week {w}, period {p} has {len(teams)} teams (expected 2).")
            a, b = teams
            ha, hb = _as_bool(Home[a][w]), _as_bool(Home[b][w])
            sol[p-1][w] = [a+1, b+1] if ha and not hb else [b+1, a+1] if hb and not ha else [a+1, b+1]
    return sol

def build_sol_from_opp_home(T, W, P, Opp, Home, Per=None):
    """
    Opp[t][w] in 1..N. If Per provided (1..P), places each match into its period.
    Returns P×W with 1-based team IDs [home, away].
    """
    sol = [[None for _ in range(W)] for _ in range(P)]
    for w in range(W):
        seen, pairs = set(), []
        for t in range(T):
            if t in seen: continue
            k = Opp[t][w] - 1
            if k == t or not (0 <= k < T): raise ValueError(f"Bad Opp[{t}][{w}]={Opp[t][w]}")
            if k in seen: continue
            seen.update((t,k))
            ha, hb = _as_bool(Home[t][w]), _as_bool(Home[k][w])
            pairs.append((t,k) if ha and not hb else (k,t) if hb and not ha else (t,k))
        if len(pairs) != T//2: raise ValueError(f"Week {w}: {len(pairs)} matches (expected {T//2}).")

        if Per is not None:
            per_bucket = {}
            for h,a in pairs:
                p = Per[h][w]  # 1..P
                if p is None: raise ValueError(f"Missing Per at week {w}")
                per_bucket[p] = [h+1, a+1]
            for p in range(1, P+1):
                if p not in per_bucket: raise ValueError(f"Week {w}: no match for period {p}.")
                sol[p-1][w] = per_bucket[p]
        else:
            pairs.sort(key=lambda ab: min(ab))
            for p,(h,a) in enumerate(pairs, start=1):
                sol[p-1][w] = [h+1, a+1]
    return sol


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
    data= {
        approach_name: {
            "time": int(runtime_sec),
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
    #5) objective function + constraint on the number of teams that have the maorty of the game at home
    count_home = [Sum([If(Home[t][w], 1, 0) for w in range(W)]) for t in range(N)]
    for t in range(N):
        # if high then sum to a W//2+1 else W//2
        solver.add(count_home[t]<=max(counts))
        solver.add(count_home[t]>=min(counts))

    # the number of high solverhould be half of the teamsolver
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

    return solver

# ---------- Circle method: fixed pairings per week ----------
#generation of round robin
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

def offline_approach_domains(N, write_json=True):
    assert N % 2 == 0 and N >= 4
    W, P = N - 1, N // 2
    teams  = list(range(1, N+1))     # 1..N (for printing)
    weeks1 = list(range(1, W+1))     # 1..W (for matches dict)
    weeks0 = list(range(W))          # 0..W-1 (for Per/Home matrices)
    periods= list(range(1, P+1))     # 1..P
    
    # -------- total timer starts here --------
    t_total0 = time.perf_counter()

    # Fixed pairings (who plays whom each week)
    matches = circle_method_pairs(N)  # dict: week(1..W) -> list of P pairs (u,v) with 1-based team IDs

    # ---------- Decision variables ----------
    # Per[t0][w0] in {1..P}: period assigned to team (t0+1) in week (w0+1)
    Per  = [[Int(f"Per_{t}_{w}")  for w in weeks0] for t in range(N)]
    # Home[t0][w0] in {0,1}: whether team (t0) is home in week (w0)
    Home = [[Bool(f"Home_{t}_{w}") for w in weeks0] for t in range(N)]
    # Light_t in {1..P}: the unique period where team t appears once (others twice)
    Light = [Int(f"Light_{t}") for t in range(N)]
    s = Solver()

    # ---------- Domains ----------
    for t0 in range(N):
        s.add(And(1 <= Light[t0], Light[t0] <= P))
        for w0 in weeks0:
            s.add(And(1 <= Per[t0][w0], Per[t0][w0] <= P))
        
    
    # ---------- Build opponent map from fixed pairings ----------
    # opp[w0][t0] = opponent (1..N) of team (t0+1) in week (w0+1)
    opp = [[None]*N for _ in weeks0]
    for w0 in weeks0:
        for (u, v) in matches[w0+1]:
            opp[w0][u-1] = v
            opp[w0][v-1] = u

    # ---------- (A) Pairing correctness per week ----------
    # Each team shares its period with its designated opponent (and with nobody else).
    for w0 in weeks0:
        for t0 in range(N):
            o0 = opp[w0][t0] - 1  # 0-based opponent index
            s.add(Per[t0][w0] == Per[o0][w0])  # same period as opponent
            for u0 in range(N):
                if u0 != t0 and u0 != o0:
                    s.add(Per[t0][w0] != Per[u0][w0])  # no other team shares their period 

    # (Optional but consistent) exactly 2 teams per period per week
    for w0 in weeks0:
        for p in periods:
            s.add(Sum([If(Per[t0][w0] == p, 1, 0) for t0 in range(N)]) == 2)

    # ---------- (B) Period profile (2,...,2,1) per team ----------
    # For each team t0 and period p:
    #   count_tp := #weeks with Per[t0][w0] == p
    #   If Light[t0] == p -> count_tp == 1; else count_tp == 2
    for t0 in range(N):
        for p in periods:
            count_tp = Sum([If(Per[t0][w0] == p, 1, 0) for w0 in weeks0])
            s.add(If(Light[t0] == p, count_tp == 1, count_tp == 2))
    
    for w0 in weeks0:
        for (u,v) in matches[w0+1]:
            s.add(Xor(Home[u-1][w0], Home[v-1][w0]))  # exactly one is True

    return s, Home, Per, Light, matches

def symmetry_breaking_constraints_offline(N, solver, Home, Per, matches):

    W = N - 1
    P = N // 2
    
    # Break global home/away flip
    solver.add(Home[0][0])
    
    # Canonicalize week 0 layout: pairsolver (0,N-1), (1,N-2), ..., (P-1,P)
    # by pinning the period choice of thosolvere teamsolver in week 0
    for i, (u, v) in enumerate(matches[1], start=1):  # 1-based team IDs
        solver.add(Per[u-1][0] == i)
        solver.add(Per[v-1][0] == i)

    return solver



