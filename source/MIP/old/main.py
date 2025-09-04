#!/usr/bin/env python3
"""
main.py template per ogni solver (MIP, CP, SAT, SMT).
Si aspetta che nel folder ci sia un modulo v1.py (e opzionalmente v2_optimal.py)
che espone una funzione run(instance, time_limit, seed_bool) -> dict/solution.
"""
import argparse
import importlib.util
import json
import os
import sys

def import_module_from_path(path, module_name):
    spec = importlib.util.spec_from_file_location(module_name, path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod

def write_json(outpath, results):
    os.makedirs(os.path.dirname(outpath), exist_ok=True)
    with open(outpath, "w") as f:
        json.dump(results, f, indent=2)
    print(f"Wrote {outpath}")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--version", type=str, default="v1", help="Which version module to run (v1, v2_optimal, ...)")
    parser.add_argument("--instance", type=int, required=True, help="n (even)")
    parser.add_argument("--time", type=int, default=300, help="time limit seconds")
    parser.add_argument("--seed", type=str, choices=["y","n"], default="n", help="use seed? y/n")
    parser.add_argument("--out", type=str, default=None, help="Percorso del file JSON di output. Default: res/MIP/{n}.json")
    args = parser.parse_args()

    here = os.path.dirname(__file__)
    module_file = os.path.join(here, f"{args.version}.py")
    if not os.path.isfile(module_file):
        print(f"Version module not found: {module_file}", file=sys.stderr)
        sys.exit(2)

    mod = import_module_from_path(module_file, f"{os.path.basename(here)}_{args.version}")
    # Expect mod.run(n, time_limit, seed_bool) returns a dict matching desired JSON keys
    seed_bool = (args.seed == "y")
    print(f"[main] Running {module_file} with n={args.instance} time={args.time} seed={seed_bool}")
    result = mod.run(args.instance, args.time, seed_bool)

    # If out not provided, use default location under res
    out = args.out
    if out is None:
        # infer model name from parent directory name
        model_name = os.path.basename(os.path.dirname(__file__))
        out = os.path.join(os.getcwd(), "res", "person_test", f"{model_name}_{args.instance}.json")
    write_json(out, result)

if __name__ == "__main__":
    main()
