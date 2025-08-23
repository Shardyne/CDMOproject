import subprocess
import sys
import json
from pathlib import Path

UNKNOWN_SOLUTION_DEFAULT_MESSAGE = "=====UNKNOWN====="
UNSATISFIABLE_SOLUTION_DEFAULT_MESSAGE = "=====UNSATISFIABLE====="


def run_minizinc(model, data, solver):
    output_path = Path(f"../res/CP/{data}.json")

    try:
        # Run minizinc and capture stdout
        result = subprocess.run(
            [
                "minizinc",
                "--time-limit", "300000",
                "--cmdline-data", f"n = {data}",
                "--solver", solver,
                "--statistics",
                model
            ],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            check=True
        )

        # Write raw output to file
        #output_path.write_text(result.stdout)

        #print(f"[OK] - Results written to {output_path}")

        # If output is JSON, parse it
        raw_output = result.stdout
        solutions = raw_output.split("----------") # split each solution with default minizinc notation
        solution_time_elapsed = float(solutions[0].split("%%%")[8].split("=")[1])
        print("TIME:", solution_time_elapsed)
        solution_content = solutions[0].split("%%%")[9:][0].split("\n")[1]
        print(f"MiniZinc found {len(solutions)//2} solutions")
        try:
            if solution_content == UNSATISFIABLE_SOLUTION_DEFAULT_MESSAGE:
                print("The solution found is UNSATISFIABLE")
            elif solution_content == UNKNOWN_SOLUTION_DEFAULT_MESSAGE:
                print("The solution HASN'T been found (UNKNOWN)")
            return json.loads(solution_content)
        except json.JSONDecodeError:
            print("[WARN] - Output is not valid JSON, returning raw text")
            return solution_content

    except subprocess.CalledProcessError as e:
        print(f"[ERROR] - MiniZinc execution failed:\n{e.stderr}")
        return None


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python run_minizinc.py <model.mzn> [n] <solver>")
        sys.exit(1)

    model, data, solver = sys.argv[1], sys.argv[2], sys.argv[3]
    result = run_minizinc(model, data, solver)

    # Example: access parsed results during execution
    if result:
        print("Accessible result:", result)