# CBC = COIN-OR Branch and Cut.

COIN-OR = COmputational INfrastructure for Operations Research (collezione di software open-source per OR).

Branch and Cut = algoritmo MIP che combina branch-and-bound con cutting planes (generazione di tagli).
Quindi CBC è il solver “Branch-and-Cut” del progetto COIN-OR.

# Panoramica rapida (il workflow che vedi nel log)

In ordine cronologico, CBC segue più o meno questo percorso quando risolve un MIP:

1. **Read model** (carica .mps / .lp).
2. **Presolve / processing** (riduce dimensione del problema, fissando variabili, semplificando vincoli).
3. **LP relaxation**: risolve il problema continuo (Clp) e riporta il *continuous objective*.
4. **Heuristics preliminari** (Feasibility Pump, roundings, mini B\&B) per trovare rapidamente una soluzione intera fattibile (incumbent).
5. **Cut generation** al nodo radice (diversi generatore di tagli: Gomory, clique, MIR, flowcover, ecc.).
6. **Branch-and-bound**: esplorazione dell’albero con branching (spesso strong branching all’inizio), ulteriori heuristics e tagli ricorsivi; aggiorna incumbent quando trova soluzioni migliori.
7. **Termina** quando timeout / raggiunto optimum / maxNodes, e stampa statistiche finali.

Quello che fai vedere nel log è esattamente questa sequenza, con la FP (Feasibility Pump) che ci mette parecchio tempo e poi un lungo B\&B che trova la soluzione poco prima del timeout. Per la descrizione generale di CBC: vedi la User Guide ufficiale. ([coin-or.org][1])

---

# Analisi riga per riga (i punti salienti nel tuo output)

### Banner e command line

```
Welcome to the CBC MILP Solver 
Version: 2.10.3 
Build Date: Dec 15 2019 

command line - ... cbc /tmp/... -sec 300 -RandomS 1234567 -threads 1 -timeMode elapsed -branch -printingOptions all -solution /tmp/... (default strategy 1)
```

* Il solver stampa versione e la riga di comando con cui è stato invocato (utile per riproducibilità). Nota l’opzione `-RandomS 1234567` (seed per CLP/solutore), `-sec 300` (time limit), `-threads 1`. ([coin-or.org][1], [GitHub][2])

---

### Lettura del modello

```
Problem MODEL has 488 rows, 16576 columns and 115997 elements
Coin0008I MODEL read with 0 errors
```

* CBC ha parsato il .mps/.lp. *rows* = vincoli, *columns* = variabili, *elements* = coefficienti non-zero. Poi passa a presolve. (Se vuoi, `prob.writeLP()` ti produce questo file per ispezione.) ([coin-or.org][1])

---

### Timeout e seed, threads, timeMode

```
seconds was changed from 1e+100 to 300
randomSeed was changed from 1234567 to 1234567
threads was changed from 0 to 1
Option for timeMode changed from cpu to elapsed
```

* Le opzioni CLI (seed, threads, timeMode) sono state impostate; il solver logga i valori effettivi. `elapsed` significa wall-clock time (tempo reale). `threads 0` è spesso significato “auto” nella build; impostando 1 forzi esecuzione sequenziale. ([coin-or.org][1])

---

### LP relaxation risolta

```
Continuous objective value is 0 - 0.26 seconds
```

* CBC (tramite Clp) ha risolto la rilassazione LP: objective continuo = 0; tempo impiegato \~0.26 s. Da qui partirebbero cut e heuristics. ([GitHub][2])

---

### Presolve / processing (Cgl0003/Cgl0004)

```
Cgl0003I 78 fixed, 0 tightened bounds, ...
Cgl0004I processed model has 474 rows, 8203 columns (8203 integer ...) and 64428 elements
```

* Il pacchetto *Cgl* (cutting/processing library) ha applicato tecniche di presolve: ha fissato alcune variabili (78 fixed), rimosso/compresso righe, ridotto la dimensione del problema. Il modello processato è più piccolo e più facile da trattare. ([coin-or.org][1])

---

### Messaggi sulla mancanza di costi

```
Cbc0045I No integer variables out of 8203 objects (8203 integer) have costs
Cbc0045I branch on satisfied N create fake objective Y random cost Y
```

* Se l’obiettivo è tutto zero (caso feasibility), CBC si trova in una situazione dove non ci sono costi che guidano il branching; allora il solver può usare una *fake/random objective* per permettere procedure di branching/euristiche che richiedono un criterio di ordinamento. Questo è normale per il *decision* (feasibility-only) mode. ([coin-or.org][1])

---

### Feasibility Pump (FP) — la fase “Pass N: suminf …”

```
Cbc0038I Initial state - 397 integers unsatisfied sum - 75.6923
Cbc0038I Pass 1: suminf. 45.72972 (253) obj. 0 iterations 2382
...
Cbc0038I Pass 100: suminf. 77.22721 (394) obj. 0 iterations 2694
Cbc0038I No solution found this major pass
Cbc0038I Before mini branch and bound, 3344 integers at bound fixed ...
Cbc0038I Mini branch and bound did not improve solution (20.51 seconds)
Cbc0038I After 22.56 seconds - Feasibility pump exiting - took 21.26 seconds
```

* Queste righe sono la **Feasibility Pump** (FP): una euristica che cerca di costruire rapidamente una soluzione intera a partire dalla soluzione rilassata.

  * `suminf` = somma delle infeasibilità (quanto la soluzione intera candidata viola i vincoli integrali).
  * Ogni `Pass` è un’iterazione della FP che alterna rilassamento continuo e rounding/“proiezione” verso integrità. Se FP trova un intero fattibile restituisce una soluzione; qui ha fatto molte passate (100) senza produrre un buon incumbent e si è fermata. Questo può succedere su problemi difficili. Per una descrizione dell’algoritmo e varianti: vedi il paper di Fischetti & coworkers (Feasibility Pump). ([dei.unipd.it][3])

---

### Cut generation al nodo radice

```
Cbc0013I At root node, 30 cuts changed objective from 0 to 0 in 8 passes
Cbc0014I Cut generator 3 (Clique) - 53 row cuts ...
...
```

* CBC prova diversi generatori di tagli (Gomory, Clique, MIR, FlowCover, ZeroHalf, TwoMir, ecc.). I cut servono a rafforzare il rilassamento LP (ridurre il poliedro rilassato) e ottenere meglio bounds. Qui molti cut sono stati generati, ma nel tuo log molti risultano “0 attivi”, cioè non hanno migliorato il bound in maniera decisiva. Pagina heuristics/cuts del progetto spiega le opzioni. ([coin-or.github.io][4], [coin-or.org][1])

---

### Branch-and-Bound (B\&B)

```
Cbc0010I After 0 nodes, 1 on tree, 1e+50 best solution, best possible 0 (24.57 seconds)
...
Cbc0010I After 38500 nodes, 79 on tree, 1e+50 best solution, best possible 0 (263.66 seconds)
...
Cbc0004I Integer solution of 0 found after 5999991 iterations and 38939 nodes (266.50 seconds)
Cbc0001I Search completed - best objective 0, took 5999991 iterations and 38939 nodes (266.50 seconds)
```

* Dopo le heuristics, CBC entra nella fase B\&B:

  * ogni *node* rappresenta un sotto-problema con alcune variabili fissate; viene risolta la rilassazione LP del nodo; si applicano tagli, heuristics locali; si scelgono variabili per branchare.
  * `1e+50 best solution` significa “ancora non c’è incumbent” (placeholder = no solution).
  * il solver esplora decine di migliaia di nodi (qui \~38.9k) e quasi 6M di iterazioni totali (LP iterations). Alla fine un’euristica o il B\&B trova una soluzione intera con objective 0. ([coin-or.org][1])

---

### Strong branching, probing, statistiche finali

```
Cbc0032I Strong branching done 31720 times (306534 iterations), fathomed 29 nodes and fixed 15 variables
...
Cuts at root node changed objective from 0 to 0
Probing was tried 16 times ...
Gomory was tried 16 times ...
Clique was tried 4236 times and created 20071 cuts of which 0 were active ...
Result - Optimal solution found
Objective value: 0.00000000
Enumerated nodes: 38939
Total iterations: 5999991
Time (CPU seconds): 266.01
Time (Wallclock seconds): 266.53
```

* **Strong branching**: PCR per decidere quale variabile branchare (testa temporaneamente i figli e valuta impatto sul bound) — costosa ma può ridurre il numero di nodi. Hai molta strong branching all’inizio, quindi il solver ha tentato di scegliere branch molto informati.
* **Probing**: tecnica di prescansione per dedurre fissazioni.
* Le statistiche finali dicono che l’algoritmo ha effettivamente trovato (o confermato fattibilità) e terminato. Le numerose prove di tagli che hanno creato molte righe ma non “attive” indicano che i tagli non hanno fornito bound più forti in questa particolare istanza (o non in modo significativo). ([coin-or.org][1], [coin-or.github.io][4])

---

# Perché la Feasibility Pump può prendere così tanto (e perché cambiare seed cambia tutto)

* FP e altri heuristics usano RNG per scegliere quali variabili “flipparsi” o come rotondare. Impostare o cambiare il `randomSeed` (o non impostarlo) cambia la sequenza casuale e quindi la storia dell’esplorazione: può favorire o sfavorire la scoperta rapida di un incumbent. Il GitHub e la doc di CBC menzionano esplicitamente che CLP/CBC usano RNG e che i seed influenzano FP e altre euristiche. ([GitHub][2], [coin-or.github.io][4])

---

# Fonti principali (lettura consigliata)

* CBC User Guide (overview, B\&B, presolve): COIN-OR Cbc user guide. ([coin-or.org][1])
* Heuristics in CBC (Feasibility Pump params, pass counts): “Getting Good Bounds in CBC” / heuristics docs. ([coin-or.github.io][4])
* Paper tecnico Feasibility Pump (original + improvements): Fischetti et al. — *The Feasibility Pump* / *Feasibility Pump 2.0*. Molto utile per capire i dettagli dell’algoritmo. ([dei.unipd.it][3])
* Discusssioni e spiegazioni sul log CBC (FAQ/StackOverflow / mailing list): utili per esempi concreti. ([Stack Overflow][5], [list.coin-or.org][6])

---

# Suggerimenti pratici su **cosa provare** per accelerare / capire meglio

1. **Esegui più run con seed diversi**: raccogli mediana/IQR dei tempi; spesso chiavi genetiche sono randomiche. (portfolio of seeds) ([GitHub][2])
2. **Regola parametri FP**: puoi limitare il numero di passaggi FP (`passFeasibilityPump`) o disabilitarlo, provare a cambiare `hoptions` o altri parametri heuristici tramite `options`. Se FP consuma troppo tempo senza successo, disattivarla può permettere a B\&B di procedere prima. (vedi docs heuristics). ([coin-or.github.io][4])
3. **Aggiungi symmetry breaking / invalidazione di simmetrie** nel modello: vincoli leggeri (ancora team1 in week1) o il circle method spesso riducono la ricerca di soluzioni equivalenti. (Hai già provato varie versioni)
4. **Limit strong branching**: ridurre il numero di candidate in strong branching (param `strong`) può diminuire il tempo per nodo ma aumentare nodi totali; è un trade-off. Puoi impostarlo via `options` di CBC o il parametro `strong` in PuLP. ([coin-or.org][1])
5. **Prova un solver alternativo** (Gurobi/CPLEX se disponibili): possono avere heuristics/tagli diversi più efficaci per il tuo modello. Se non disponibili, prova di esportare .lp e testare su una macchina con altro solver.
6. **Profiling di presolve**: esporta `.lp` e confronta `processed model has ... reduced to ...` per versioni diverse/modelli per capire quanto è efficace il presolve. Spesso una modellazione leggermente diversa produce un presolve molto più forte. ([coin-or.org][1])


[1]: https://www.coin-or.org/Cbc/cbcuserguide.html?utm_source=chatgpt.com "CBC User Guide - COIN-OR"
[2]: https://github.com/coin-or/Cbc?utm_source=chatgpt.com "coin-or/Cbc: COIN-OR Branch-and-Cut solver - GitHub"
[3]: https://www.dei.unipd.it/~fisch/papers/feasibility_pump.pdf?utm_source=chatgpt.com "[PDF] The feasibility pump - dei.unipd"
[4]: https://coin-or.github.io/Cbc/heuristics.html?utm_source=chatgpt.com "Getting Good Bounds in CBC"
[5]: https://stackoverflow.com/questions/74000397/analyzing-the-log-of-cbc-solver-in-pulp?utm_source=chatgpt.com "Analyzing the log of CBC solver in pulp - Stack Overflow"
[6]: https://list.coin-or.org/pipermail/cbc/2016-March/001970.html?utm_source=chatgpt.com "[Cbc] How to get first feasible integer solutions ... - Mailing Lists"

