# utils_0idx_1val.py
import re, subprocess, time, argparse, tempfile
from utils_copy import *
from collections import defaultdict
import subprocess


# ---------- model parsing ----------
DEF_FUN_ANY_RE = re.compile(
    r"\s*\(define-fun\s+([A-Za-z0-9_]+)\s+\(\)\s+([A-Za-z0-9_]+)\s+([^)]+)\)",
    re.I | re.DOTALL
)

GET_VAL_PAIR_RE = re.compile(
    r"\s*\(\s*([A-Za-z0-9_]+)\s+(true|false|-?\d+)\s*\)",
    re.I
)


def _coerce_lit(sort: str, lit: str):
    s, v = sort.lower(), lit.lower()
    if s == "bool": return v == "true"
    try: return int(lit)
    except ValueError: raise ValueError(f"Unsupported literal for sort {sort}: {lit}")

def parse_model(stdout: str) -> dict:
    """
    Return a dict var_name -> (int|bool) value.
    Supports both (define-fun ...) and ((var val)) styles with int/bool.
    """
    vals = {}
    for m in DEF_FUN_ANY_RE.finditer(stdout):
        name, sort, lit = m.group(1), m.group(2), m.group(3)
        vals[name] = _coerce_lit(sort, lit)
    if vals:
        return vals
    for m in GET_VAL_PAIR_RE.finditer(stdout):
        name, tok = m.group(1), m.group(2)
        if tok.lower() in ("true", "false"):
            vals[name] = (tok.lower() == "true")
        else:
            vals[name] = int(tok)
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

# ---------- solver runner ----------
def run_solver(smt_path, solver, timeout_s):
    if solver == "z3" or solver.endswith("z3"):
        cmd = [solver, "-smt2", smt_path]
    elif solver == "cvc5" or solver.endswith("cvc5"):
        cmd = [solver, "--lang=smt2", "--produce-models", smt_path]
    else:
        raise SystemExit("solver must be z3 or cvc5")
    t0 = time.time()
    try:
        out = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                             timeout=timeout_s, check=False, text=True)
    except subprocess.TimeoutExpired:
        return "timeout", "", timeout_s
    elapsed = time.time() - t0
    return out.stdout, out.stderr, elapsed


def get_status(stdout: str) -> str:
    """
    Robustly detect solver result from stdout.
    Returns one of: "sat", "unsat", "unknown", "timeout", "unsupported".
    """
    lines = [ln.strip().lower() for ln in stdout.splitlines() if ln.strip()]
    
    if any("unsat" in ln for ln in lines):
        return "unsat"
    if any("timeout" in ln for ln in lines):
        return "timeout"
    if any("sat" in ln for ln in lines):
        return "sat"
    if any("unknown" in ln for ln in lines):
        return "unknown"

# ---------- main ----------

def main():
    ap = argparse.ArgumentParser(description="Parse SMT2 model and update res/SMT/{N}.json")
    ap.add_argument("--solver", default="z3", choices=["z3", "cvc5"], help="Solver binary")
    ap.add_argument("--approach", choices=["channeled", "offline"], help="approach to use")
    ap.add_argument("--timeout", type=int, default=300, help="Timeout seconds")
    ap.add_argument("--N", type=int, required=False, help="Teams (even). If omitted, inferred.")
    ap.add_argument("--outdir", default="res/SMT1", help="Output directory")
    args = ap.parse_args()

    N = args.N
    approach = f'{args.solver}_{args.approach}'

    # ---------- Helper to normalize solver output ----------

    if args.approach == 'channeled':
        

        proc = subprocess.Popen(
            [args.solver, "-in"],  # e.g. "z3 -in"
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            text=True
        )

        def send(cmd, read_response=True):
            """Send SMT-LIB command to solver, optionally read result."""
            proc.stdin.write(cmd + "\n")
            proc.stdin.flush()
            if not read_response:
                return None

            out = []
            while True:
                line = proc.stdout.readline().strip()
                out.append(line)
                if line in ("sat", "unsat", "unknown", ""):
                    break
            return out
        
        s, Per, Home, Opp = channeled_model_no_check(N)
        #s = symmetry_breaking_constraints(N, s, Home, Per, Opp)
        base_smt = s.to_smt2()

        for line in base_smt.splitlines():
            send(line, read_response=False)
        
        lower, upper = 0, 50

        while lower < upper:
            mid = (lower + upper) // 2
            print("Trying mid =", mid)

            send("(push)", read_response=False)
            send(f"(assert (< SUM_DIFFS {mid}))", read_response=False)  
            # replace SUM_DIFFS with your encoding of sum(abs(...))

            sat_result = send("(check-sat)")[0]

            if sat_result == "unsat":
                lower = mid + 1
            else:  # sat
                upper = mid
                send("(get-model)")  # optional, parse model if you need
                # model parsing logic goes here

            send("(pop)", read_response=False)

        print("Optimal value =", upper)

        proc.stdin.close()
        proc.terminate()






    elif args.approach == 'offline':
        s, Home, Per, matches = offline_approach_domains(N)
        #s = symmetry_breaking_constraints_offline(N, s, Home, Per, matches)
        smt = s.to_smt2()

        with tempfile.NamedTemporaryFile("w", suffix=".smt2", delete=False) as f:
            f.write("(set-logic ALL)\n(set-option :produce-models true)\n(set-option :timeout 300000)\n")
            f.write(smt)
            f.write("(get-model)\n")
            f.flush()
            stdout, stderr, elapsed = run_solver(f.name, args.solver, args.timeout)
            tmp_path = f.name
        os.remove(tmp_path)

        status=get_status(stdout)
        if status=='timeout' or status in ('unknown', 'unsat')  :
            solved = 0
        else:
            solved = 1

        if solved != 0:
            assigns = parse_model(stdout)
            T, W, P = N, N - 1, N // 2
            Home = read_grid(assigns, "Home", T, W, default=False)
            counts = [sum(1 if _as_bool(Home[t][w]) else 0 for w in range(W)) for t in range(T)]
            obj = int(sum(abs(2 * c - W) for c in counts))
            total_time = elapsed
            print(counts)
        else:
            # handle timeout/unsat
            pass

        while solved != 0 and not (status=='timeout' or status in ('unknown', 'unsat') ):
            sol1, sol2 = stdout, stderr
            s, Home, Per, matches = offline_approach_domains(N)
            s = smt_obj_manual(N, Home, obj, counts, s)
            #s = symmetry_breaking_constraints_offline(N, s, Home, Per, matches)
            smt = s.to_smt2()

            with tempfile.NamedTemporaryFile("w", suffix=".smt2", delete=False) as f:
                f.write("(set-logic ALL)\n(set-option :produce-models true)\n(set-option :timeout 300000)")
                f.write(smt)
                f.write("(get-model)\n")
                f.flush()
                stdout, stderr, elapsed2 = run_solver(f.name, args.solver, args.timeout - total_time) 
                os.remove(f.name)
            total_time += elapsed2

            assigns = parse_model(stdout)
            if not assigns:
                status=get_status(stdout)
                break
            Per = read_grid(assigns, "Per", T, W, default=None)
            Home = read_grid(assigns, "Home", T, W, default=False)
            counts = [sum(1 if _as_bool(Home[t][w]) else 0 for w in range(W)) for t in range(T)]
            obj = int(sum(abs(2 * c - W) for c in counts))
            status=get_status(stdout)
            
            print(counts)

    # ... (rest of your code for timeout/unsat handling, solution reconstruction, JSON writing)
    if status=='timeout' and solved==0:
        N = args.N or 0
        os.makedirs(args.outdir, exist_ok=True)
        outpath = os.path.join(args.outdir, f"{N}.json") if N else os.path.join(args.outdir, "unknownN.json")
        existing = {}
        if os.path.exists(outpath):
            try:
                with open(outpath, "r") as f: existing = json.load(f)
            except Exception: pass
        existing[approach] = {"time": args.timeout, "optimal": False, "obj": None, "sol": []}
        with open(outpath, "w") as f: json.dump(existing, f)
        print(f"[TIMEOUT] merged placeholder into {outpath}")
        return

    if (status in ('unknown', 'unsat')) and solved==0:
        N = args.N or 0
        os.makedirs(args.outdir, exist_ok=True)
        outpath = os.path.join(args.outdir, f"{N}.json") if N else os.path.join(args.outdir, "unknownN.json")
        existing = {}
        if os.path.exists(outpath):
            try:
                with open(outpath, "r") as f: existing = json.load(f)
            except Exception: pass
        existing[approach] = {"time": int(elapsed), "optimal": True, "obj": None, "sol": []}
        with open(outpath, "w") as f: json.dump(existing, f)
        print(f"[UNSAT] merged placeholder into {outpath}")
        return


    if (status=='timeout' or status in ('unknown', 'unsat') ) and solved>0:
        assigns = parse_model(sol1)
        Per  = read_grid(assigns, "Per",  T, W, default=None)
        Home = read_grid(assigns, "Home", T, W, default=False)
        Opp=None


    if not assigns:
        print(sol1)
        print(sol2, file=sys.stderr)
        raise SystemExit("Could not parse any variable assignments. Ensure the file does (get-model) or (get-value ...).")

    # Reconstruct solution
    try:
        Per = read_grid(assigns, "Per", T, W, default=None)
        Home = read_grid(assigns, "Home", T, W, default=False)
        Opp=None
        if Opp is not None:
            sol = build_sol_from_opp_home(T, W, P, Opp, Home, Per)
        else:
            if Per is None:
                raise ValueError("Need either Opp or Per to reconstruct matches.")
            sol = build_sol_from_per_home(T, W, P, Per, Home)
    except Exception as e:
        os.makedirs(args.outdir, exist_ok=True)
        outpath = os.path.join(args.outdir, f"{T}.json")
        payload = {approach: {"time": int(args.timeout), "optimal": False, "obj": None, "sol": []}}
        with open(outpath, "w") as f: json.dump(payload, f)
        raise SystemExit(f"[ERROR] {e}\nWrote placeholder {outpath}")

    # Objective: sum_t |2*home_t - W|
    counts = [sum(1 if _as_bool(Home[t][w]) else 0 for w in range(W)) for t in range(T)]
    obj = int(sum(abs(2*c - W) for c in counts))

    # Merge/update JSON
    os.makedirs(args.outdir, exist_ok=True)
    outpath = os.path.join(args.outdir, f"{T}.json") 
    try:
        with open(outpath, "r") as f:
            existing = json.load(f)
    except Exception:
        existing = {}

    existing[approach] = {
        "time": int(total_time),
        "optimal": True if obj==N else False,
        "obj": obj,
        "sol": sol
    }
    with open(outpath, "w") as f:
        json.dump(existing, f)
    print(f"[OK] {approach} → {outpath}  (time={total_time:.2f}s, obj={obj})")
    print(counts)


if __name__ == "__main__":
    main()
