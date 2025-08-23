#!/bin/bash
    
# Usage: ./run_minizinc.sh <model.mzn> [n] <solver>

if [ $# -lt 2 ]; then
    echo "Usage: $0 <model.mzn> [n] <solver>"
    exit 1
fi

MODEL=$1
DATA=$2
SOLVER=$3
OUTPUT="../res/CP/$DATA.json"

minizinc --cmdline-data "n = $DATA" --solver "$SOLVER" "$MODEL" > "$OUTPUT" 

if [ $? -eq 0 ]; then
    echo "[OK] - Results written to $OUTPUT"
else
    echo "[ERROR] - MiniZinc execution failed"
fi