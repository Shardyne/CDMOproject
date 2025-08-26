import subprocess
import sys
import json
from pathlib import Path

UNKNOWN_SOLUTION_DEFAULT_MESSAGE = "=====UNKNOWN====="
UNSATISFIABLE_SOLUTION_DEFAULT_MESSAGE = "=====UNSATISFIABLE====="

INPUT_DATA_FILENAME = "preprocessed_data" + ".dzn"

def write_triangular_dzn(n: int):
    if n % 2 != 0:
        raise ValueError("n must be an even integer")

    # Collect non-zero indices (upper triangular, excluding diagonal)
    coords = [(i+1, j+1) for i in range(n) for j in range(i+1, n)]

    # Format as MiniZinc array of tuples
    dzn_content = "matches=[" + ",".join(f"({r},{c})" for r, c in coords) + f"];\nn={n};"

    # Write to file
    with open(INPUT_DATA_FILENAME, "w") as f:
        f.write(dzn_content)

    print(f"File '{INPUT_DATA_FILENAME}' written with {len(coords)} tuples.")


def run_minizinc(model, solver):
    try:
        # Run minizinc and capture stdout
        result = subprocess.run(
            [
                "minizinc",
                "--time-limit", "300000",
                "--data", f"{INPUT_DATA_FILENAME}",
                "--solver", solver,
                "--statistics",
                model
            ],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            check=True
        )

        # If output is JSON, parse it
        raw_output = result.stdout
        tot_n_sol_found = len(raw_output.split("----------"))//2
        solution = raw_output.split("----------")[0] # split each solution with default minizinc notation
        solution_time_elapsed = float(raw_output.split("----------")[1].split("%%%")[2].split("=")[1])
        solution_content = solution.split("%%%")[9:][0].split("\n")[1]
        print(f"MiniZinc found {tot_n_sol_found} solutions")
        try:
            if solution_content == UNSATISFIABLE_SOLUTION_DEFAULT_MESSAGE:
                print("The solution found is UNSATISFIABLE")
            elif solution_content == UNKNOWN_SOLUTION_DEFAULT_MESSAGE:
                print("The solution HASN'T been found (UNKNOWN)")
            json_solution = json.loads(solution_content)
            json_solution["time"] = solution_time_elapsed
            return {f"{solver}":json_solution}
        except json.JSONDecodeError:
            print("[WARN] - Output is not valid JSON, returning raw text")
            return "ERROR JSON PARSE"

    except subprocess.CalledProcessError as e:
        print(f"[ERROR] - MiniZinc execution failed:\n{e.stderr}")
        return None


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python run_minizinc.py <model.mzn> [n] <solver>")
        sys.exit(1)

    model, n, solver = sys.argv[1], sys.argv[2], sys.argv[3]
    output_path = Path(f"../res/CP/{n}.json")
    write_triangular_dzn(int(n))
    result = run_minizinc(model, solver)

    output_path.write_text(json.dumps(result))

    print(f"[OK] - Results written to {output_path}")

    # Example: access parsed results during execution
    if result:
        print("Accessible result:", result)