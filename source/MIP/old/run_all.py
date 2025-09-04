#!/usr/bin/env python3
"""
Esegue automaticamente più istanze (n = 6, 8, 10, 12, ...) per entrambi gli approcci,
fermandosi quando un'istanza non viene risolta in tempo.
"""
import os, json, subprocess, sys

ROOT = os.path.dirname(os.path.abspath(__file__))
RUN = os.path.join(ROOT, "run_mip.py")
RES = os.path.join(ROOT, "..", "res", "MIP")
os.makedirs(RES, exist_ok=True)

def run(n, approach):
    cmd = [sys.executable, RUN, "--n", str(n), "--approach", approach]
    print(">", " ".join(cmd))
    out = subprocess.run(cmd, capture_output=True, text=True)
    print(out.stdout)
    if out.returncode != 0:
        print(out.stderr, file=sys.stderr)
    # carica json per controllare optimal flag
    with open(os.path.join(RES, f"{n}.json")) as f:
        data = json.load(f)
    key = f"pulp_{approach}"
    return data[key]["optimal"]

def main():
    sizes = [6, 8, 10, 12, 14]
    for n in sizes:
        for approach in ["feasibility", "balance"]:
            ok = run(n, approach)
            if not ok:
                print(f"Stop: n={n} approach={approach} non ottimale entro il limite.")
                return

if __name__ == "__main__":
    main()
