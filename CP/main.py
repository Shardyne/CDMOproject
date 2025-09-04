import subprocess
import json
from pathlib import Path
import argparse

UNKNOWN_SOLUTION_DEFAULT_MESSAGE = "UNKNOWN====="
UNSATISFIABLE_SOLUTION_DEFAULT_MESSAGE = "UNSATISFIABLE====="

INPUT_DATA_FILENAME = "./_cache_/preprocessed_data" + ".json"
PARTIAL_OUTPUT_FILENAME = "./_cache_/partial_output" + ".json"

EXECUTION_CONFIGURATIONS = {
    "v1": {
        "first_model": "round_robin_model.mzn",
        "hap_model": "HAP_v1_model.mzn",
        "solver": "chuffed",
        "round_robin": True
    }, 
    "v2": {
        "first_model": "constraint_v2_model.mzn",
        "hap_model": "HAP_v1_model.mzn",
        "solver": "gecode",
        "round_robin": False
    },
    "v3": {
        "first_model": "constraint_v2_model.mzn",
        "hap_model": None,
        "solver": "gecode",
        "round_robin": False
    },
    "v4": {
        "first_model": "naive_model.mzn",
        "hap_model": None,
        "solver": "gecode",
        "round_robin": False
    }
}

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

'''
returns a 3-dim list where these are the dimensions: [2][periods][weeks]
'''
def write_tridimensional_round_robin(n:int):
    periods, weeks = n // 2, n - 1
    calendar = [[[[1] for _ in range(weeks)] for _ in range(periods)] for _ in range(2)]
    teams = list(range(1, n + 1))
    for w in range(weeks):
        for p in range(periods):
            calendar[0][p][w] = teams[p]
            calendar[1][p][w] = teams[n - 1 - p]

        # rotate everything except the first team
        teams = [teams[0]] + teams[-1:] + teams[1:-1]
    output_data = {
        "n": n,
        "calendar": calendar
    }
    Path(INPUT_DATA_FILENAME).parent.mkdir(parents=True, exist_ok=True)
    with open(INPUT_DATA_FILENAME, "w") as f:
        json.dump(output_data, f)
    return calendar
                

def write_triangular(n: int):
    if n % 2 != 0:
        raise ValueError("n must be an even integer")
    #non-zero indices (upper triangular, excluding diagonal)
    matches = [[i + 1, j + 1] for i in range(n) for j in range(i + 1, n)]
    output_data = {
        "n": n,
        "matches": matches
    }
    Path(INPUT_DATA_FILENAME).parent.mkdir(parents=True, exist_ok=True)
    with open(INPUT_DATA_FILENAME, "w") as f:
        json.dump(output_data, f)
    print(f"File '{INPUT_DATA_FILENAME}' written with {len(matches)} matches.")


def run_minizinc(model, solver, input_data_filename, timeout):
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
                return {f"{solver}":{'sol':[],'time':150,'obj':None,'optimal':True}}
            elif unsat_solution_content == UNKNOWN_SOLUTION_DEFAULT_MESSAGE:
                print("The solution HASN'T been found (UNKNOWN)")
                return {f"{solver}":{'sol':[],'time':150,'obj':None,'optimal':False}}
            json_solution = json.loads(solution_content)
            json_solution["time"] = solution_time_elapsed
            return {f"{solver}":json_solution}
        except json.JSONDecodeError:
            print("[WARN] - Output is not valid JSON, returning raw text")
            return "ERROR JSON PARSE"

    except subprocess.CalledProcessError as e:
        print(f"[ERROR] - MiniZinc execution failed:\n{e.stderr}")
        return {f"{solver}":{'sol':[],'time':300,'obj':None,'optimal':False}}
    except Exception as e:
        print(e)
        if raw_output:
            print("\n RAW OUTPUT:", raw_output)
        return {f"{solver}":{'sol':[],'time':300,'obj':None,'optimal':False}}
    

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run the solver")

    parser.add_argument(
        "--version", 
        default="v1", 
        help="Version of the model"
    )
    parser.add_argument(
        "--instance", 
        type=int, 
        default=6, 
        help="Instance number (n)"
    )
    parser.add_argument(
        "--time", 
        type=int, 
        default=300, 
        help="Time limit in seconds"
    )
    parser.add_argument(
        "--seed", 
        help="Not implemented here"
    )
    parser.add_argument(
        "--out", 
        default=None, 
        help="Not implemented here"
    )

    args = parser.parse_args()

    time_limit = args.time * 1000
    n = args.instance
    exec_env = EXECUTION_CONFIGURATIONS[args.version]
    round_robin = exec_env["round_robin"]
    optional_hap_model = exec_env["hap_model"]
    solver = exec_env["solver"]

    output_path = Path(f"../res/CP/{n}.json")
    partial_output_path = Path(f"./{PARTIAL_OUTPUT_FILENAME}")

    if round_robin:
        write_tridimensional_round_robin(n)
    else:
        write_triangular(n)

    result1 = run_minizinc(exec_env["first_model"], solver , INPUT_DATA_FILENAME, time_limit)

    if result1:
        print("Partial result:", result1)

    partial_result = "{" + f"\"sol\":{result1[solver]['sol']},\n\"n\":{n}" + "}"
    partial_timer = result1[solver]["time"]

    if optional_hap_model: # if an HAP optimization model was provided, continue the pipeline
        partial_output_path.write_text(partial_result)
    
        result2 = run_minizinc(optional_hap_model, solver, PARTIAL_OUTPUT_FILENAME, timeout=time_limit-10-(partial_timer*1000))

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