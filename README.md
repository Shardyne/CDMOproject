# CDMOproject
Project for the Combinatorial Decision Making &amp; Optimization course of the MAster's Degree in Artificial Intelligence of UniBo

# Docker usage (quick guide)

This README explains how to build and run the project image using **only Docker CLI**. It documents the available flags that the container entrypoint accepts, shows concrete examples, and lists the available versions and which version token to pass when you want to run a specific experiment.

All commands assume you run them from the project root where the `Dockerfile` and the `source/` directory live.

---

## Build the Docker image

Build the image once (from project root):

```bash
docker build -t sts-container .
```

---

## Mount host folders into the container

You should mount your working `source/` and `res/` directories into the container so the container uses your code and writes outputs back to the host:

```bash
# Unix / macOS (bash / zsh)
-v "$(pwd)/source:/CDMO/source" -v "$(pwd)/res:/CDMO/res"
```

On PowerShell use `${PWD}` instead of `$(pwd)`.

---

## Entrypoint behavior & supported flags

The container entrypoint accepts two styles of invocation:

1. **No arguments (batch mode)**
   If you run the container **without passing any arguments**, the entrypoint will sequentially run every approach:
   `CP`, `SMT`, `MIP` — invoking `python /CDMO/source/<APPROACH>/main.py` for each approach **with default parameters**.

2. **Single-approach mode (positional or flag style)**
   If you pass arguments, the entrypoint will run a single approach only.

   * **Positional form**:

     ```bash
     docker run --rm -v "$(pwd)/source:/CDMO/source" -v "$(pwd)/res:/CDMO/res" \
       sts-container MIP 8 v1
     ```

     This runs `python /CDMO/source/MIP/main.py --instance 8 --version v1`.

   * **Flag form**:

     ```bash
     docker run --rm -v "$(pwd)/source:/CDMO/source" -v "$(pwd)/res:/CDMO/res" \
       sts-container -- --approach MIP --n 8 --version v1
     ```

     This runs the same `main.py` and forwards `--n 8 --version v1`.

### Supported flags (forwarded by the entrypoint)

* `--approach <APPROACH>` — one of `CP`, `SMT`, `MIP` (case-insensitive).
* `--n` or `--instance <int>` — instance size (even integer).
* `--version <str>` — version token (e.g. `v1`, `v3`, `v4`).
* `-h`, `--help` — show help (entrypoint prints usage).


---

## Examples

### 1) Run everything (batch mode)

Runs all four approaches (`CP`, `SMT`, `MIP`) sequentially, no parameters:

```bash
docker run --rm \
  -v "$(pwd)/source:/CDMO/source" \
  -v "$(pwd)/res:/CDMO/res" \
  sts-container
```

### 2) Run only MIP with positional args (n=8, version=v1)

Positional style:

```bash
docker run --rm \
  -v "$(pwd)/source:/CDMO/source" \
  -v "$(pwd)/res:/CDMO/res" \
  sts-container MIP 8 v1
```

This calls `/CDMO/source/MIP/main.py --instance 8 --version v1`.

### 3) Run only MIP with flag args (identical behavior)

Flag style (note the `--` after the image):

```bash
docker run --rm \
  -v "$(pwd)/source:/CDMO/source" \
  -v "$(pwd)/res:/CDMO/res" \
  sts-container -- --approach MIP --n 8 --version v1
```

### 4) Enter an interactive shell in the container (dev debugging)

If you want a shell inside the image (mounting your source/res):

```bash
docker run --rm -it \
  -v "$(pwd)/source:/CDMO/source" \
  -v "$(pwd)/res:/CDMO/res" \
  sts-container /bin/bash
```

Then you can run commands manually inside the container, e.g.:

```bash
python /CDMO/source/MIP/main.py --instance 8 --version v1
```
---

## MIP: available versions and which token to call

The MIP folder contains several behaviors. Choose the token below when you run the container.

| version token to pass | meaning / which implementation is used                                                                                                                                           |
| --------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `v1`                  | **base** behavior — run the `base` experiments from `v_1_2_3.py`. Use `--version v1`.                                                                                            |
| `v3`                  | **i\<j** variant — the experiments that use the ordering `i<j` (symmetry handling). Implemented in `v_1_2_3.py` (same file but with `version='i<j'` passed). Use `--version v3`. |
| `v4`                  | **pre** / preprocessing variant — calls `v_4.py` (`build_model_with_permutations`). Use `--version v4`.                                                                          |
#### Where results are written

* **Batch mode (no args)**: the MIP batch writes files into:

  ```
  /CDMO/res/MIP/{nn}.json
  ```

* **Single-version mode** (when you pass `--version` and `--instance`) the script writes to:

  ```
  /CDMO/res/additional_tests/{n}.json
  ```
