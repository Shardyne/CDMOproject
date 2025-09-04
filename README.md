# CDMOproject
Project for the Combinatorial Decision Making &amp; Optimization course of the MAster's Degree in Artificial Intelligence of UniBo

README (snippet con comandi docker)

# STS Docker image – usage

## Build image
From project root:
```bash
docker build -t sts-container .
````

Mount volumes so that host `source/` and `res/` are used inside container:

* host `./source` -> container `/CDMO/source`
* host `./res`    -> container `/CDMO/res`

## Run ALL models (batch)

No args: container runs all solvers (CP,SAT,SMT,MIP) with default n=6 and saves to `res/test/`:

```bash
docker run --rm -v $(pwd)/source:/CDMO/source -v $(pwd)/res:/CDMO/res sts-container
```

## Run single model (positional)

```bash
docker run --rm -v $(pwd)/source:/CDMO/source -v $(pwd)/res:/CDMO/res sts-container MIP v1 8 300 n res/person_test/MIP_8.json
```

* MODEL = `MIP` (case-insensitive)
* VERSION = `v1` (optional)
* N = 8 (optional)
* TIME = 300 (optional)
* SEED = `y` or `n` (optional)
* OUT = output json path (optional)

## Run single model (flags)

```bash
docker run --rm -v $(pwd)/source:/CDMO/source -v $(pwd)/res:/CDMO/res sts-container -- --model MIP --version v1 --n 8 --time 300 --seed n --out res/person_test/MIP_8.json
```

## Notes

* Edit code locally under `source/` and re-run container (mount keeps it live).
* The entrypoint will run `source/solver.py` on the output directory after each batch or single execution.


