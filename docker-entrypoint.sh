#!/bin/bash
set -euo pipefail

# ENTRYPOINT for the STS docker image
# Supports:
#   - no args -> runs all solvers (CP,SAT,SMT,MIP) with DEFAULT_N and saves in res/test/
#   - args: either positional: MODEL [VERSION] [N] [TIME] [SEED] [OUT]
#           or long flags: --model MODEL --version v1 --n 6 --time 300 --seed y --out path
#
# Available flags:
#   --model    (required when passing args)  : CP|SAT|SMT|MIP
#   --version  (optional) default "v1"
#   --n        (optional) default 6
#   --time     (optional) default 300
#   --seed     (optional) y|n default n
#   --out      (optional) path to json output

SOLVERS=("CP" "SAT" "SMT" "MIP")
DEFAULT_N=6
DEFAULT_TIME=300
DEFAULT_VERSION="v1"
DEFAULT_SEED="n"

usage() {
  cat <<EOF
Usage:
  (1) No args: run all solvers with default n=${DEFAULT_N} and save to res/test/
      docker run --rm -v /path/to/project/res:/CDMO/res -v /path/to/project/source:/CDMO/source IMAGE

  (2) Positional: docker run IMAGE MODEL [VERSION] [N] [TIME] [SEED] [OUT]
      Example:
      docker run --rm -v $(pwd)/res:/CDMO/res -v $(pwd)/source:/CDMO/source IMAGE MIP v1 8 300 n res/person_test/MIP_8.json

  (3) Flags: docker run IMAGE -- --model MIP --version v1 --n 8 --time 300 --seed n --out res/person_test/MIP_8.json

Note: mount your host 'source/' to /CDMO/source and 'res/' to /CDMO/res when running.
EOF
}

# If no args: batch mode over all solvers
if [ "$#" -eq 0 ]; then
  echo "[entrypoint] No args provided: running all solvers with n=${DEFAULT_N}"
  mkdir -p /CDMO/res/test
  for solver in "${SOLVERS[@]}"; do
    echo "[entrypoint] Running solver ${solver} (default version=${DEFAULT_VERSION})..."
    if [ -f "/CDMO/source/${solver}/main.py" ]; then
      python /CDMO/source/"${solver}"/main.py --version "${DEFAULT_VERSION}" --instance "${DEFAULT_N}" --time "${DEFAULT_TIME}" --seed "${DEFAULT_SEED}" --out "/CDMO/res/test/${solver}_${DEFAULT_N}.json"
    else
      echo "[entrypoint] Warning: /CDMO/source/${solver}/main.py not found, skipping."
    fi
  done
  echo "[entrypoint] Running aggregate check_solution.py on /CDMO/res/test"
  if [ -f /CDMO/check_solution.py ]; then
    python /CDMO/check_solution.py /CDMO/res/test
  else
    echo "[entrypoint] Warning: /CDMO/check_solution.py not found."
  fi
  exit 0
fi

# Parse args (support both flags and positional)
MODEL=""
VERSION=""
N=""
TIME_LIMIT=""
SEED=""
OUT=""

# If first arg startswith -- treat as flags; else accept positional and flags
if [[ "$1" == --* ]]; then
  # parse long options
  while [[ "$#" -gt 0 ]]; do
    case "$1" in
      --model) MODEL="$2"; shift 2;;
      --version) VERSION="$2"; shift 2;;
      --n) N="$2"; shift 2;;
      --time) TIME_LIMIT="$2"; shift 2;;
      --seed) SEED="$2"; shift 2;;
      --out) OUT="$2"; shift 2;;
      -h|--help) usage; exit 0;;
      *) echo "Unknown option: $1"; usage; exit 1;;
    esac
  done
else
  # positional parsing
  MODEL="${1:-}"
  VERSION="${2:-}"
  N="${3:-}"
  TIME_LIMIT="${4:-}"
  SEED="${5:-}"
  OUT="${6:-}"
fi

# set defaults where needed
VERSION=${VERSION:-$DEFAULT_VERSION}
N=${N:-$DEFAULT_N}
TIME_LIMIT=${TIME_LIMIT:-$DEFAULT_TIME}
SEED=${SEED:-$DEFAULT_SEED}

if [ -z "$MODEL" ]; then
  echo "[entrypoint] ERROR: model not specified."
  usage
  exit 1
fi

MODEL_UPPER=$(echo "$MODEL" | tr '[:lower:]' '[:upper:]')
TARGET_MAIN="/CDMO/source/${MODEL_UPPER}/main.py"

if [ ! -f "$TARGET_MAIN" ]; then
  echo "[entrypoint] ERROR: model main not found at ${TARGET_MAIN}"
  exit 1
fi

# Prepare output path if not specified
if [ -z "$OUT" ]; then
  mkdir -p /CDMO/res/person_test
  OUT="/CDMO/res/person_test/${MODEL_UPPER}_${N}.json"
else
  # ensure directory exists
  DIRNAME=$(dirname "$OUT")
  mkdir -p "$DIRNAME"
fi

echo "[entrypoint] Running model=${MODEL_UPPER}, version=${VERSION}, n=${N}, time=${TIME_LIMIT}, seed=${SEED}, out=${OUT}"
python "$TARGET_MAIN" --version "$VERSION" --instance "$N" --time "$TIME_LIMIT" --seed "$SEED" --out "$OUT"

# After running single model, run check_solution.py on the containing folder (if exists)
OUT_DIR=$(dirname "$OUT")
if [ -f /CDMO/source/check_solution.py ]; then
  echo "[entrypoint] Running check_solution.py on ${OUT_DIR}"
  python /CDMO/source/check_solution.py "$OUT_DIR"
else
  echo "[entrypoint] check_solution.py not found in /CDMO/source; skipping post-check."
fi

echo "[entrypoint] Done."
