import subprocess
import sys
import json
from pathlib import Path

UNKNOWN_SOLUTION_DEFAULT_MESSAGE = "UNKNOWN====="
UNSATISFIABLE_SOLUTION_DEFAULT_MESSAGE = "UNSATISFIABLE====="

INPUT_DATA_FILENAME = "./_cache_/preprocessed_data" + ".dzn"
PARTIAL_OUTPUT_FILENAME = "./_cache_/partial_output" + ".json"

BASELINE_TIMEOUT = 300_000

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

    # Ensure parent directory exists
    Path(INPUT_DATA_FILENAME).parent.mkdir(parents=True, exist_ok=True)
    # Write to file
    with open(INPUT_DATA_FILENAME, "w") as f:
        f.write(dzn_content)

    print(f"File '{INPUT_DATA_FILENAME}' written with {len(coords)} tuples.")


def run_minizinc(model, solver, input_data_filename = INPUT_DATA_FILENAME, timeout = BASELINE_TIMEOUT):
    raw_output = None
    try:
        # Run minizinc and capture stdout
        result = subprocess.run(
            [
                "minizinc",
                "--time-limit", str(timeout),
                "--data", f"{input_data_filename}",
                "--solver", solver,
                "--statistics",
                "--seed", "1234",
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
    if len(sys.argv) < 4:
        print("Usage: python run_minizinc.py <model.mzn> <n> <solver> <optional HAP_model.mzn>")
        sys.exit(1)

    model, n, solver = sys.argv[1], sys.argv[2], sys.argv[3]
    optional_hap_model = sys.argv[4] if len(sys.argv) > 4 else None
    output_path = Path(f"../res/CP/{n}.json")
    partial_output_path = Path(f"./{PARTIAL_OUTPUT_FILENAME}")
    write_triangular_dzn(int(n))

    result1 = run_minizinc(model, solver)

    if result1:
        print("Partial result:", result1)

    partial_result = "{" + f"\"sol\":{result1[solver]['sol']},\n\"n\":{n}" + "}"
    partial_timer = result1[solver]["time"]

    if optional_hap_model: # if an HAP optimization model was provided, continue the pipeline
        partial_output_path.write_text(partial_result)
    
        result2 = run_minizinc("HAP_v1_model.mzn", solver, PARTIAL_OUTPUT_FILENAME, timeout=BASELINE_TIMEOUT-10-(partial_timer*1000))

        result2[solver]["time"] = result2[solver]["time"] + partial_timer

        if output_path.exists():
            existing_data = json.loads(output_path.read_text())
        else:
            existing_data = {}
        existing_data.update(result2)
        output_path.write_text(json.dumps(existing_data))

        print("Accessible result:", result2)
    else:
        if output_path.exists():
            existing_data = json.loads(output_path.read_text())
        else:
            existing_data = {}
        existing_data.update(result1)
        output_path.write_text(json.dumps(existing_data))

    print(f"\n[OK] - Results written to {output_path}")