import subprocess
import sys
import json
from pathlib import Path

UNKNOWN_SOLUTION_DEFAULT_MESSAGE = "UNKNOWN====="
UNSATISFIABLE_SOLUTION_DEFAULT_MESSAGE = "UNSATISFIABLE====="

INPUT_DATA_FILENAME = "preprocessed_data" + ".dzn"

def extract_between(text: str, substring: str) :
    # Find where the substring starts
    start_index = text.find(substring)
    if start_index == -1:
        return ""  # substring not found
    # Move to the end of the substring
    start_index += len(substring)
    # Find the next newline character
    end_index = text.find("\n", start_index)
    if end_index == -1:  
        # If no newline found, take until end of text
        return text[start_index:].strip()
    return text[start_index:end_index].strip()

def write_triangular_dzn(n: int):
    if n % 2 != 0:
        raise ValueError("n must be an even integer")

    # Collect non-zero indices (upper triangular, excluding diagonal)
    coords = [(i+1, j+1) for i in range(n) for j in range(i+1, n)]

    # Format as MiniZinc array of tuples
    dzn_content = "matches=[|" + "|".join(f"{r},{c}" for r, c in coords) + f"|];\nn={n};"

    # Write to file
    with open(INPUT_DATA_FILENAME, "w") as f:
        f.write(dzn_content)

    print(f"File '{INPUT_DATA_FILENAME}' written with {len(coords)} tuples.")


def run_minizinc(model, solver):
    raw_output = None
    try:
        # Run minizinc and capture stdout
        result = subprocess.run(
            [
                "minizinc",
                "--time-limit", "300000",
                "--data", f"{INPUT_DATA_FILENAME}",
                "--solver", solver,
                "--statistics",
                "--seed", "1234",
                #"-p", "8" ,
                model
            ],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            check=True
        )

        # If output is JSON, parse it
        raw_output = result.stdout
        solution_time_elapsed = int(float(extract_between(raw_output, "solveTime=")))
        solution_content = "{" + extract_between(raw_output, "{")
        unsat_solution_content = extract_between(raw_output, "=====")
        try:
            if unsat_solution_content == UNSATISFIABLE_SOLUTION_DEFAULT_MESSAGE:
                print("The solution found is UNSATISFIABLE")
            elif unsat_solution_content == UNKNOWN_SOLUTION_DEFAULT_MESSAGE:
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
    except Exception as e:
        print(e)
        if raw_output:
            print("\n RAW OUTPUT:", raw_output)
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