# STS — Mixed-Integer Linear Programming (PuLP)

Questo progetto risolve il problema **Sports Tournament Scheduling** (STS) con un modello **MILP** usando **PuLP** (solver CBC).

## Modello
- Variabili binarie `x[w,p,i,j] = 1` se nella **settimana** `w` e **periodo** `p` la squadra `i` (casa) gioca contro la squadra `j` (trasferta).
- Vincoli:
  1. esattamente **una** partita per ogni `(settimana, periodo)`;
  2. ogni **coppia non ordinata** di squadre gioca **una sola volta** nell'intero torneo;
  3. ogni squadra gioca **una volta a settimana**;
  4. ogni squadra gioca **al più due volte** nello **stesso periodo** durante il torneo.
- Versione **decisione**: obiettivo nullo (solo fattibilità).
- Versione **ottimizzazione**: si minimizza la somma dell'**squilibrio** casa/trasferta per squadra con variabili ausiliarie `d_i ≥ |home_i − away_i|`.

> Nota: per ridurre lievemente le simmetrie, vincoliamo la squadra 1 a comparire nel `periodo 1` delle settimane 1 e 2 (se `n ≥ 4`).

## Requisiti
- Tempo massimo: **300s** per istanza (impostato con `--timeout`; default 300).
- Esecuzione **sequenziale** (nessun multithreading).
- Output in `res/MIP/{n}.json` con la seguente struttura (chiave = nome approccio):
```json
{
  "pulp_feasibility": {
    "time": 300,
    "optimal": false,
    "obj": null,
    "sol": [[...], ...]
  }
}
```
Campo `time` = `floor(runtime)` se ottimo, altrimenti `300` (per rispettare la specifica).

## Docker
Costruzione immagine:
```bash
docker build -t sts-mip .
```
Esecuzione (decisione):
```bash
docker run --rm -v $(pwd):/out sts-mip python code/run_mip.py --n 6 --approach feasibility
```
Esecuzione (ottimizzazione):
```bash
docker run --rm -v $(pwd):/out sts-mip python code/run_mip.py --n 6 --approach balance
```
> I risultati vengono scritti in `res/MIP/{n}.json` **dentro al container**. Per salvarli all'esterno, eseguire:
```bash
docker run --rm -v $(pwd):/app sts-mip python code/run_mip.py --n 6 --approach balance
```
e poi copiare `res/MIP/6.json` dal repository locale.

## Esecuzioni automatiche
Per lanciare più istanze in sequenza (6,8,10,12,14) per entrambi gli approcci:
```bash
python code/run_all.py
```
In Docker:
```bash
docker run --rm sts-mip python code/run_all.py
```

## Integrazione con `check_solution.py`
Se disponi del `check_solution.py` del corso, puoi verificarne la correttezza così:
```bash
python check_solution.py --n 6 --file res/MIP/6.json
```
> Assicurati che il checker sia eseguito **dentro** lo stesso ambiente Python/Docker.

## Nota su solutori alternativi
Per ottenere **bonus**, puoi integrare un backend solver-agnostico. PuLP permette di cambiare solver senza riscrivere il modello:
- CBC (default con `PULP_CBC_CMD`)
- GLPK (`GLPK_CMD`) — open source
- CPLEX/GUROBI (commerciali) — opzionali, se disponibili

Per usare GLPK (se installato):
```bash
# dentro run_mip.py sostituisci il solver con:
# solver = pulp.GLPK_CMD(options=["--seed", "42", "--tmlim", str(time_limit)])
```

## Riproducibilità
- Immagine Docker con versioni fissate.
- `threads=1`/variabili d'ambiente per avere esecuzione sequenziale.
- `randomSeed=42` per CBC.

## Licenza
MIT
