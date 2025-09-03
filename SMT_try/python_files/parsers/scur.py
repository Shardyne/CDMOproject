# utils_0idx_1val.py
import re, subprocess, time, argparse, tempfile, json, os, sys
from utils_copy import *
from collections import defaultdict


# ---------- model parsing ----------
DEF_FUN_ANY_RE = re.compile(
    r"\s*\(define-fun\s+([A-Za-z0-9_]+)\s+\(\)\s+([A-Za-z0-9_]+)\s+([^\s\)]+)\)",
    re.I
)

GET_VAL_PAIR_RE = re.compile(
    r"\s*\(\s*([A-Za-z0-9_]+)\s+(true|false|-?\d+)\s*\)",
    re.I
)


def _coerce_lit(sort: str, lit: str):
    s, v = sort.lower(), lit.lower()
    if s == "bool": 
        return v == "true"
    try: 
        return int(lit)
    except ValueError: 
        raise ValueError(f"Unsupported literal for sort {sort}: {lit}")


def parse_model(stdout: str) -> dict:
    """
    Return a dict var_name -> (int|bool) value.
    Supports both (define-fun ...) and ((var val)) styles with int/bool.
    """
    vals = {}
    
    # Try define-fun style first
    for m in DEF_FUN_ANY_RE.finditer(stdout):
        name, sort, lit = m.group(1), m.group(2), m.group(3)
        vals[name] = _coerce_lit(sort, lit)
    
    if vals:
        return vals
    
    # Fall back to val-pair style
    for m in GET_VAL_PAIR_RE.finditer(stdout):
        name, tok = m.group(1), m.group(2)
        vals[name] = tok.lower() == "true" if tok.lower() in ("true", "false") else int(tok)
    
    return vals


# ---------- grid helpers (0-based names only) ----------
def infer_grid_size(varnames, prefix):
    """Var names like Per_t_w with t,w 0-based -> sizes = max+1."""
    pat = re.compile(rf"^{re.escape(prefix)}_(\d+)_(\d+)$")
    coords = []
    
    for v in varnames:
        m = pat.match(v)
        if m: 
            coords.append((int(m.group(1)), int(m.group(2))))
    
    if not coords: 
        return None, None
    
    T = max(t for t, _ in coords) + 1
    W = max(w for _, w in coords) + 1
    return T, W


def read_grid(assigns, prefix, T, W, default=None):
    """Optimized grid reading with pre-allocated structure."""
    g = [[default] * W for _ in range(T)]
    
    for t in range(T):
        for w in range(W):
            k = f"{prefix}_{t}_{w}"
            if k in assigns: 
                g[t][w] = assigns[k]
    
    return g


def _as_bool(x):  
    """accepts bool or 0/1"""
    return x if isinstance(x, bool) else bool(int(x))


# ---------- reconstruction ----------
def build_sol_from_per_home(T, W, P, Per, Home):
    """
    Per[t][w] in 1..P, Home[t][w] in Bool.
    Returns P×W with 1-based team IDs [home, away].
    """
    sol = [[None] * W for _ in range(P)]
    
    for w in range(W):
        buckets = defaultdict(list)
        
        # Group teams by period
        for t in range(T):
            p = Per[t][w]
            if p is None: 
                raise ValueError(f"Missing Per[{t}][{w}]")
            buckets[p].append(t)
        
        # Process each period
        for p in range(1, P + 1):
            teams = buckets.get(p, [])
            if len(teams) != 2:
                raise ValueError(f"Week {w}, period {p} has {len(teams)} teams (expected 2).")
            
            a, b = teams
            ha, hb = _as_bool(Home[a][w]), _as_bool(Home[b][w])
            
            # Determine home/away order
            if ha and not hb:
                sol[p-1][w] = [a+1, b+1]
            elif hb and not ha:
                sol[p-1][w] = [b+1, a+1]
            else:
                sol[p-1][w] = [a+1, b+1]  # default
    
    return sol


def build_sol_from_opp_home(T, W, P, Opp, Home, Per=None):
    """
    Opp[t][w] in 1..N. If Per provided (1..P), places each match into its period.
    Returns P×W with 1-based team IDs [home, away].
    """
    sol = [[None] * W for _ in range(P)]
    
    for w in range(W):
        seen = set()
        pairs = []
        
        # Extract unique pairs
        for t in range(T):
            if t in seen: 
                continue
            
            k = Opp[t][w] - 1
            if k == t or not (0 <= k < T): 
                raise ValueError(f"Bad Opp[{t}][{w}]={Opp[t][w]}")
            if k in seen: 
                continue
            
            seen.update((t, k))
            ha, hb = _as_bool(Home[t][w]), _as_bool(Home[k][w])
            
            # Determine home/away order
            if ha and not hb:
                pairs.append((t, k))
            elif hb and not ha:
                pairs.append((k, t))
            else:
                pairs.append((t, k))  # default
        
        if len(pairs) != T // 2: 
            raise ValueError(f"Week {w}: {len(pairs)} matches (expected {T//2}).")

        # Assign to periods
        if Per is not None:
            per_bucket = {}
            for h, a in pairs:
                p = Per[h][w]  # 1..P
                if p is None: 
                    raise ValueError(f"Missing Per at week {w}")
                per_bucket[p] = [h+1, a+1]
            
            for p in range(1, P + 1):
                if p not in per_bucket: 
                    raise ValueError(f"Week {w}: no match for period {p}.")
                sol[p-1][w] = per_bucket[p]
        else:
            pairs.sort(key=lambda ab: min(ab))
            for p, (h, a) in enumerate(pairs, start=1):
                sol[p-1][w] = [h+1, a+1]
    
    return sol


# ---------- solver runner ----------
def run_solver(smt_path, solver, timeout_s):
    """Run SMT solver with proper command construction."""
    if solver == "z3" or solver.endswith("z3"):
        cmd = [solver, "-smt2", smt_path]
    elif solver == "cvc5" or solver.endswith("cvc5"):
        cmd = [solver, "--lang=smt2", smt_path]
    else:
        raise SystemExit("solver must be z3 or cvc5")
    
    t0 = time.time()
    try:
        out = subprocess.run(
            cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            timeout=timeout_s,
            check=False,
            text=True
        )
        return out.stdout, out.stderr, time.time() - t0
    except subprocess.TimeoutExpired:
        return "timeout", "", timeout_s


def get_status(stdout: str) -> str:
    """
    Robustly detect solver result from stdout.
    Returns one of: "sat", "unsat", "unknown", "timeout", "unsupported".
    """
    lines = [ln.strip().lower() for ln in stdout.splitlines() if ln.strip()]
    
    # Check in priority order
    for check, status in [("unsat", "unsat"), ("timeout", "timeout"), 
                         ("sat", "sat"), ("unknown", "unknown")]:
        if any(check in ln for ln in lines):
            return status
    
    return "unknown"


# ---------- optimization helpers ----------
def create_smt_file(content, solver):
    """Create temporary SMT file with standard headers."""
    f = tempfile.NamedTemporaryFile("w", suffix=".smt2", delete=False)
    f.write("(set-logic ALL)\n(set-option :produce-models true)\n '(set-option :timeout 300000)'\n")
    if solver=='z3':
        f.write('(set-option :random-seed 42)\n')
    else:
        f.write('(set-option :seed 42)\n')
    f.write(content)
    f.write("(get-model)\n")
    f.flush()
    return f.name


def calculate_objective(Home, T, W):
    """Calculate home/away balance objective."""
    counts = [sum(1 if _as_bool(Home[t][w]) else 0 for w in range(W)) for t in range(T)]
    return counts, sum(abs(2 * c - W) for c in counts)


def write_result(outdir, N, approach, total_time, obj, sol, optimal=None):
    """Write results to JSON file."""
    os.makedirs(outdir, exist_ok=True)
    outpath = os.path.join(outdir, f"{N}.json") if N else os.path.join(outdir, "unknownN.json")
    
    # Load existing results
    existing = {}
    if os.path.exists(outpath):
        try:
            with open(outpath, "r") as f: 
                existing = json.load(f)
        except Exception: 
            pass
    
    # Update with new results
    existing[approach] = {
        "time": int(total_time),
        "optimal": optimal if optimal is not None else (obj == N if obj is not None else False),
        "obj": obj,
        "sol": sol or []
    }
    
    with open(outpath, "w") as f: 
        json.dump(existing, f)
    
    return outpath


def solve_iteratively(args, N, initial_solver_func, improvement_solver_func, solver):
    """
    Unified iterative solving logic for both approaches.
    Returns (status, assigns, total_time, obj, sol, counts)
    """
    # Initial solve
    s, *model_vars = initial_solver_func(N)
    smt_content = s.to_smt2()
    
    smt_path = create_smt_file(smt_content, solver)
    try:
        stdout, stderr, elapsed = run_solver(smt_path, args.solver, args.timeout)
    finally:
        os.remove(smt_path)
    
    status = get_status(stdout)
    total_time = elapsed
    
    if status in ('timeout', 'unknown', 'unsat'):
        return status, None, total_time, None, None, None
    
    # Parse initial solution
    assigns = parse_model(stdout)
    if not assigns:
        return "parse_error", None, total_time, None, None, None
    
    T, W, P = N, N - 1, N // 2
    Per = read_grid(assigns, "Per", T, W, default=None)
    Home = read_grid(assigns, "Home", T, W, default=False)
    
    try:
        sol = build_sol_from_per_home(T, W, P, Per, Home)
        counts, obj = calculate_objective(Home, T, W)
    except Exception:
        return "reconstruction_error", assigns, total_time, None, None, None
    
    print(f"Initial solution: obj={obj}, counts={counts}")
    
    # Iterative improvement
    while obj != N and total_time < args.timeout:
        remaining_time = args.timeout - total_time
        if remaining_time <= 1:
            break
        
        # Generate improved constraint
        s, *model_vars = improvement_solver_func(N, Home, obj, counts)
        smt_content = s.to_smt2()
        
        smt_path = create_smt_file(smt_content, solver)
        try:
            stdout_new, stderr_new, elapsed2 = run_solver(smt_path, args.solver, remaining_time)
        finally:
            os.remove(smt_path)
        
        total_time += elapsed2
        new_status = get_status(stdout_new)
        
        if new_status in ('timeout', 'unknown', 'unsat'):
            break
        
        new_assigns = parse_model(stdout_new)
        if not new_assigns:
            break
        
        # Update solution
        Per = read_grid(new_assigns, "Per", T, W, default=None)
        Home = read_grid(new_assigns, "Home", T, W, default=False)
        
        try:
            sol = build_sol_from_per_home(T, W, P, Per, Home)
            counts, obj = calculate_objective(Home, T, W)
            assigns = new_assigns
            stdout, stderr = stdout_new, stderr_new
            print(f"Improved solution: obj={obj}, counts={counts}")
        except Exception:
            break
    
    return status, assigns, total_time, obj, sol, counts


# ---------- main ----------
def main():
    ap = argparse.ArgumentParser(description="Parse SMT2 model and update res/SMT/{N}.json")
    ap.add_argument("--solver", default="z3", choices=["z3", "cvc5"], help="Solver binary")
    ap.add_argument("--approach", choices=["channeled", "offline"], required=True, help="approach to use")
    ap.add_argument("--timeout", type=int, default=300, help="Timeout seconds")
    ap.add_argument("--N", type=int, required=True, help="Teams (even)")
    ap.add_argument("--outdir", default="res/SMT1", help="Output directory")
    args = ap.parse_args()

    N = args.N
    approach = f'{args.solver}_{args.approach}'
    T, W, P = N, N - 1, N // 2

    # Approach-specific solver functions
    if args.approach == 'channeled':
        def initial_solve(N):
            s, Per, Home, Opp = channeled_model_no_check(N)
            return symmetry_breaking_constraints(N, s, Home, Per, Opp), Per, Home, Opp
        
        def improve_solve(N, Home, obj, counts):
            s, Home_new, Per_new, matches = offline_approach_domains(N)
            s = smt_obj_manual(N, Home_new, obj, counts, s)
            return symmetry_breaking_constraints_offline(N, s, Home_new, Per_new, matches), Home_new, Per_new, matches
    
    elif args.approach == 'offline':
        def initial_solve(N):
            s, Home, Per, matches = offline_approach_domains(N)
            return symmetry_breaking_constraints_offline(N, s, Home, Per, matches), Home, Per, matches
        
        def improve_solve(N, Home, obj, counts):
            s, Home_new, Per_new, matches = offline_approach_domains(N)
            s = smt_obj_manual(N, Home_new, obj, counts, s)
            return symmetry_breaking_constraints_offline(N, s, Home_new, Per_new, matches), Home_new, Per_new, matches

    # Solve iteratively
    status, assigns, total_time, obj, sol, counts = solve_iteratively(
        args, N, initial_solve, improve_solve, args.solver
    )
    
    # Handle different outcomes
    if status == 'timeout' and assigns is None:
        outpath = write_result(args.outdir, N, approach, args.timeout, None, None, False)
        print(f"[TIMEOUT] merged placeholder into {outpath}")
        return
    
    if status in ('unknown', 'unsat') and assigns is None:
        outpath = write_result(args.outdir, N, approach, total_time, None, None, True)
        print(f"[{status.upper()}] merged placeholder into {outpath}")
        return
    
    if not assigns:
        print(f"Could not parse variable assignments from solver output")
        sys.exit(1)
    
    if sol is None:
        try:
            # Final reconstruction attempt
            Per = read_grid(assigns, "Per", T, W, default=None)
            Home = read_grid(assigns, "Home", T, W, default=False)
            sol = build_sol_from_per_home(T, W, P, Per, Home)
            counts, obj = calculate_objective(Home, T, W)
        except Exception as e:
            outpath = write_result(args.outdir, N, approach, args.timeout, None, None, False)
            raise SystemExit(f"[ERROR] {e}\nWrote placeholder {outpath}")
    
    # Write final results
    optimal = obj == N if obj is not None else False
    outpath = write_result(args.outdir, N, approach, total_time, obj, sol, optimal)
    
    print(f"[OK] {approach} → {outpath}  (time={total_time:.2f}s, obj={obj})")
    print(f"Home counts: {counts}")


if __name__ == "__main__":
    main()