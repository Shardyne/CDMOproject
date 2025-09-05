#!/usr/bin/env python3
import os
import sys
import json
import statistics
from collections import defaultdict

def analyze_results(res_dir):
    stats = defaultdict(lambda: {"count": 0, "times": []})

    for fname in os.listdir(res_dir):
        if not fname.endswith(".json"):
            continue
        try:
            version, presolve, seed, n_with_ext = fname.split("_")
            n = int(n_with_ext.replace(".json", ""))
        except ValueError:
            # Nome file non conforme
            version, presolve, seed, n_with_ext = "", "", "", ""
            continue

        path = os.path.join(res_dir, fname)
        with open(path, "r") as f:
            data = json.load(f)

        for _, result in data.items():
            time_val = result.get("time", None)
            if time_val is not None and time_val != 300:
                key = (n, presolve, version)
                stats[key]["count"] += 1
                stats[key]["times"].append(time_val)

    # Calcola statistiche
    report = {}
    for key, vals in stats.items():
        n, presolve, version = key
        if vals["times"]:
            mean_time = statistics.mean(vals["times"])
            min_time = min(vals["times"])
            max_time = max(vals["times"])
        else:
            mean_time = min_time = max_time = None
        report[key] = {
            "count": vals["count"],
            "mean": mean_time,
            "min": min_time,
            "max": max_time
        }
    return report

def print_table(report, warm_start, objective):
    # Ordini desiderati
    version_order = {"base": 0, "i<j": 1}
    presolve_order = {"True": 0, "False": 1}  # attenzione: presolve arriva come stringa

    def sort_key(item):
        (n, presolve, version), _ = item
        v_rank = version_order.get(version, 99)     # 99 se non trovato
        p_rank = presolve_order.get(presolve, 99)  # idem
        return (v_rank, p_rank, n)

    # Meta-header
    print(f"Warm_start: {warm_start} | Objective: {objective}")
    header = f"{'n':<5} {'presolve':<10} {'version':<10} {'mean':<10} {'min':<10} {'max':<10} {'count':<7}"
    print("-" * len(header))
    print(header)
    print("-" * len(header))

    for (n, presolve, version), vals in sorted(report.items(), key=sort_key):
        mean_str = f"{vals['mean']:.2f}" if vals['mean'] is not None else "-"
        min_str = f"{vals['min']:.2f}" if vals['min'] is not None else "-"
        max_str = f"{vals['max']:.2f}" if vals['max'] is not None else "-"
        print(f"{n:<5} {presolve:<10} {version:<10} {mean_str:<10} {min_str:<10} {max_str:<10}  {vals['count']}")

    print("-" * len(header))


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Uso: python analyze.py <cartella_risultati>")
        sys.exit(1)

    res_dir = sys.argv[1]
    if not os.path.isdir(res_dir):
        print(f"Errore: {res_dir} non è una cartella valida.")
        sys.exit(1)

    # Estrai warm_start e objective dall’ultima parte del path
    last_part = os.path.basename(os.path.normpath(res_dir))
    if "_" in last_part:
        warm_start, objective = last_part.split("_", 1)
    else:
        warm_start, objective = last_part, "unknown"

    report = analyze_results(res_dir)
    if report:
        print_table(report, warm_start, objective)
    else:
        print("Nessun risultato valido trovato.")
        print_table(report, warm_start, objective)
