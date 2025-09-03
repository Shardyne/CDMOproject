
- versione 1 -> base
- versione 2 -> i!=j
- versione 3 -> i< j
  
- T -> presolve = True 
- T -> presolve = False 

10 id diversi usati per ogni cella di cui uno estratto sempre in modo random
Se non presente (t_min-t_max s) significa che il tempo è 300 s


| Version 1       |                         | Version 2       |                 | Version 3      |               | n   |
| --------------- | ----------------------- | --------------- | --------------- | -------------- | ------------- | --- |
| balanced        |                         | balanced        |                 | balanced       |               |     |
| T               | F                       | T               | F               | T              | F             |     |
| 7/10            | 4/9 opt <br>1/9 non opt | 6/10            | 3/10            | 9/10           | 9/10          | 12  |
| 0/10            | 0/10                    | 0/10            | 0/10            | 4/10           | 4/10          | 14  |
| 0/10            | 0/10                    | 0/10            | 0/10            | 0/10           | 0/10          | 16  |
| feaseble        |                         | feaseble        |                 | feaseble       |               |     |
| 10/10  (4-108s) | 10/10 (4-108)           | 10/10  (3-108s) | 10/10  (4-108s) | 10/10 (10-60s) | 10/10 (1-35s) | 12  |
| 5/10 (2-279s)   | 4/10 (4-213)            | 5/10 (2-279s)   | 4/10 (78-213)   | 2/10 (21-229s) | 3/10 (4-162s) | 14  |
| 0/10            | 0/10                    | 0/10            | 0/10            | 0/10           | 0/10          | 16  |
Ottimo — facciamo ordine e smontiamo il problema pezzo per pezzo. Ti spiego i pattern che hai osservato, _perché_ succedono (con motivazioni tecniche) e ti do riferimenti ufficiali e letteratura per approfondire. Non ti faccio perdere tempo con filosofie: dico cosa succede, perché succede, e cosa puoi provare.

---

## 1) Riassunto rapido dei pattern osservati (estratti dalla tabella)

- **Versione 1 (base)** e **Versione 2 (i!=j)** sono **praticamente equivalenti** in senso modellistico (stessa struttura logica) ma differiscono nel _numero di variabili inutili_ (`i==j`) — quindi dovrebbero avere prestazioni molto simili, con leggere differenze dovute a densità e ordine di costruzione del modello.
    
- **Versione 3 (i<j)** (variabile unica per coppia non ordinata) **riduce il numero di variabili** ~di un fattore ~2 rispetto a `i!=j`. Però i risultati dicono:
    
    - Per **balanced** spesso la versione `i<j` si comporta **meglio**.
        
    - Per **feasible** spesso la versione `i<j` si comporta **peggio**.
        
- **Presolve ON/OFF**: non c'è una regola fissa: in alcuni casi `presolve=True` aiuta (modello ridotto, variabili fissate), in altri può peggiorare (le modifiche di struttura/semplificazioni cambiano come funzionano le euristiche successive — ad es. feasibility pump / heuristics).
    

---

## 2) Conferma: versione 1 ≈ versione 2?

Sì: _logicamente_ le due formulazioni rappresentano la stessa famiglia di soluzioni (la sola differenza è che la versione **base** ha anche `x[w,p,i,i]` variabili inutili che i vincoli porteranno naturalmente a zero).  
Quindi, teoricamente equivalenti; in pratica la presenza di variabili in più (anche se forzate a 0) può cambiare:

- La dimensione del modello MPS scritto al solver (righe/colonne),
    
- l’ordine delle colonne/righe,
    
- la densità della matrice (legate a come generi i vincoli),  
    e questi fattori possono cambiare il comportamento delle routine interne del solver. Questo spiega piccole differenze osservate fra 1 e 2.
    

---

## 3) Perché `i<j` (version 3) **può** migliorare oppure peggiorare?

### Quando migliora (spesso per `balanced`)

- Riducendo il numero di variabili `x` parti con un _modello più piccolo_ — meno colonne per il risolutore, meno binarie da enumerare. Questo **riduce simmetria** dovuta all’orientazione doppia `x(i,j)` / `x(j,i)` e può rendere la ricerca più efficiente, specialmente se poi aggiungi poche variabili orientazione ben collegate (vedi sotto).
    
- Nella versione `balanced` hai un _obbiettivo_ che guida la ricerca (minimizzare la somma dei `d[i]`): un obiettivo ben definito aiuta le euristiche (feasibility pump, primal heuristics) a trovare soluzioni “buone” e a fermare la ricerca. Con meno variabili la componente ottimizzante può essere più efficace.
    

### Quando peggiora (spesso per `feasible`)

- **Sparità / struttura dei vincoli**: passando a variabili `i<j` cambi la struttura della matrice (diventa più “indiretta” perché ora bisogna usare `min/max` o mapping `pairs_of_team[t]` per i vincoli che sommavano `x[i,j] + x[j,i]`). Questo può aumentare **la densità apparente** delle righe del problema (molti vincoli che toccano la stessa variabile) o rompere le buone proprietà della rilassazione LP usata dalle euristiche.
    
- **Euristiche del solver** (feasibility pump, primal heuristics) sono progettate per lavorare meglio con certe strutture (ad esempio con variabili orientate l’euristica può generare una soluzione iniziale più rapidamente). Rimuovendo orientamento diretto potresti rendere la pump meno efficace o togliere un “bersaglio” facile per le euristiche. CBC, come altri solver, dipende molto da queste euristiche iniziali.
    
- **Vincoli di collegamento extra**: se per ottenere l’orientamento nei `i<j` aggiungi variabili `h` (come nell’ultima versione) e i vincoli `h <= x` o `y1 + y2 == x`, introduci nuove variabili binarie e vincoli che possono aumentare nodi e rumore nel branch-and-bound — quindi potresti finire con _più_ lavoro invece che meno.
    

Fonti tecniche su CBC, feasibility pump e presolve: CBC user guide & heuristics pages sono molto esplicativi (vedi citazioni alla fine). ([coin-or.org](https://www.coin-or.org/Cbc/cbcuserguide.html?utm_source=chatgpt.com "CBC User Guide - COIN-OR"), [coin-or.github.io](https://coin-or.github.io/Cbc/heuristics.html?utm_source=chatgpt.com "Getting Good Bounds in CBC"))

---

## 4) Perché _più vincoli (symmetry-breaking)_ a volte peggiorano le prestazioni?

- **Tagliare lo spazio di ricerca** è una cosa buona _se_ tagli classi di soluzioni equivalenti (simmetrie), lasciando una soluzione rappresentante per classe. Ma l’effetto pratico dipende da _come_ quei vincoli cambiano la rilassazione LP e la forma della matrice: vincoli “forti” che rompono simmetria con poche disuguaglianze leggere spesso aiutano; vincoli che introducono molte nuove variabili ausiliarie, o che rendono le righe molto densa/collegate, possono rompere le euristiche interne (es. feasibility pump) e peggiorare la capacità del solver di trovare un incandescente rapido.
    
- Inoltre **≠ tutte le symmetry-breaking sono “safe”**: alcune regole lessicografiche possono essere corrette solo se aggiunte in modo che per ogni soluzione valida esiste un’equivalente che soddisfa il vincolo; se sbagli a imporre qualcosa troppo stringente puoi _eliminare_ soluzioni valide e rendere il problema inconsistente.
    

Riferimenti su symmetry breaking / efficacia: lavori e survey su symmetry in MILP. ([ScienceDirect](https://www.sciencedirect.com/science/article/abs/pii/S0305054818300844?utm_source=chatgpt.com "Symmetry breaking in mixed integer linear programming ..."), [repository.uantwerpen.be](https://repository.uantwerpen.be/docman/irua/575e67/151941_2019_04_06.pdf?utm_source=chatgpt.com "[PDF] Symmetry Breaking in Mixed Integer Linear Programming ..."))

---

## 5) Perché il seed cambia così tanto (e -1 behave diversamente)?

- CBC ha euristiche _randomizzate_ interne (ad esempio perturbazioni, tie-breaking, ordini di esplorazione, scelta variabili per branching, perturbazioni in feasibility pump ecc.). Il `RandomS` (o param name equivalente) imposta il seme di queste componenti. Cambiando seed cambi l’evoluzione delle euristiche e quindi **la storia di cosa CBC prova prima**: questo può produrre grandissime variazioni nelle performance (4s vs 200s è esattamente il tipo di oscillazione nota nella pratica dei MIP). Documentazione e discussioni confermano che la variabilità di run a causa del seed è normale. ([coin-or.github.io](https://coin-or.github.io/Cbc/heuristics.html?utm_source=chatgpt.com "Getting Good Bounds in CBC"), [pubsonline.informs.org](https://pubsonline.informs.org/doi/pdf/10.1287/educ.2013.0112?utm_source=chatgpt.com "Performance Variability in Mixed-Integer Programming - PubsOnLine"))
    
- Il valore `-1` o comportamento “time-of-day” (seed = ora corrente) produce uno schema deterministico rispetto al tuo ambiente (se `-1` è interpretato in modo coerente dal binario), mentre un seed fisso (es. 1234567 o RandomS 42) produce un comportamento ripetibile. Il punto è: risultati **dipendono dal seed** — per misure sperimentali affidabili devi:
    
    1. fare molte repliche su diversi seed e riportare medie/percentili;
        
    2. non giudicare una sola run come definitiva.
        

Riferimento sulla Feasibility Pump e su come CBC invoca heuristics/preset: ([coin-or.github.io](https://coin-or.github.io/Cbc/heuristics.html?utm_source=chatgpt.com "Getting Good Bounds in CBC"), [coin-or.org](https://www.coin-or.org/Doxygen/Cbc/classCbcHeuristic.html?utm_source=chatgpt.com "Cbc: CbcHeuristic Class Reference - COIN-OR"))

---

## 6) Perché presolve a volte aiuta e a volte no?

- **Cosa fa il presolve** (in generale e in CBC): riduce modello (elimina variabili fissate, sostituisce, rimuove righe ridondanti, fissa bounds), e può anche impostare variabili fisse derivanti da passi iniziali di heuristics. Se il presolve **fissa molte variabili** e riduce il problema, la branch-and-bound diventa più veloce. Ma:
    
    - se il presolve è aggressivo può cambiare la struttura in modo che le euristiche successive (e.g. feasibility pump) perdano la “buona” strategia;
        
    - o presolve può essere costoso (tempo speso in presolve + poi solver non guadagna tanto), specie su istanze particolari;
        
    - in CBC esistono parametri che controllano _quante_ e _quali_ fasi di presolve vengono fatte (vedi parametri `passPresolve`, `fractionForBAB`, ecc.). ([dev.ampl.com](https://dev.ampl.com/solvers/cbc/options.html?utm_source=chatgpt.com "CBC Options - AMPL Resources"), [gams.com](https://www.gams.com/50/docs/S_CBC.html?utm_source=chatgpt.com "CBC - GAMS"))
        

Conclusione pratica: **testa sempre presolve on/off nelle tue serie di esperimenti e riportane l’effetto statistico**. Non esiste una regola che “accende sempre presolve migliora”.

---

## 7) Spiegazione del caso “obj = 10” (esempio che hai mostrato)

- Nell’obiettivo `balanced` tu minimizzi la somma delle variabili `d[i]`, dove `d[i] >= |home_i - away_i|`. Se alla soluzione ogni squadra ha differenza 1 (ad esempio casa - fuori = ±1) per 10 squadre, la somma degli assoluti è 10. Quindi `obj=10` è perfettamente coerente: è la somma delle imbalance per tutte le squadre.
    
- `d[i]` continua: anche se `home_minus_away` è sempre intero (perché è somma di binarie), `d[i]` può essere trattata come continua nella modellazione: è una variabile che gli consenti di essere non-integer perché stai linearizzando |·|; il solver la risolverà comunque a valori interi/razionali coerenti con vincoli (in genere interi perché RHS e coefficienti sono interi) ma la mantieni continua per **evitare branching su di esse** (alzando la performance) — tipica tecnica modeling: rendere ausiliarie continue quando possibile. Riferimento concetto: linearizzazione valore assoluto e scelta variabilità continua per evitare branching. ([oar.princeton.edu](https://oar.princeton.edu/rt4ds/file/19763/3190?utm_source=chatgpt.com "[PDF] Designing Networks: A Mixed-Integer Linear Optimization Approach"))
    

---

## 8) Raccomandazioni pratiche (cosa fare ora, cosa testare sistematicamente)

1. **Esperimenti statistici** — non giudicare da una run:
    
    - Per ogni configurazione (version/presolve/anchor/seed) esegui _K_ run con K≥10 seed diversi (o più, se puoi). Raccogli: tempo, soluzione trovata (obj), nodi, best-bound. Riporta mediana e quartili. Questo è lo standard in letteratura su solver MIP. ([pubsonline.informs.org](https://pubsonline.informs.org/doi/pdf/10.1287/educ.2013.0112?utm_source=chatgpt.com "Performance Variability in Mixed-Integer Programming - PubsOnLine"))
        
2. **Valuta separatamente objective vs feasibility**:
    
    - Per `balanced` mantieni _orientazione_ direttamente nelle variabili (`i!=j` o `base`) se vuoi evitare di aggiungere troppa logica di `h` / vincoli che collegano `x` con orientamento.
        
    - Se usi `i<j` _per feasible_, evita a priori di aggiungere troppi vincoli ausiliari che connettono variabili: la semplificazione può rompere euristiche.
        
3. **Presolve ON/OFF**: testalo sistematicamente. Non c’è certezza che aiuti sempre; registra i dati.
    
4. **Symmetry-breaking**:
    
    - _Safe_ symmetric breaks: forzare composizione della prima settimana con circle method è generalmente “sparse & safe” (non elimina classi non-isomorfe), quindi è spesso una buona politica.
        
    - Evita vincoli lessicografici molto complessi se non sai che sono _provably safe_ — possono essere costosi. Se vuoi provare canonical ordering come `sig_w <= sig_{w+1}`, implementalo ma **misura**: può aiutare per settimane ma peggiorare per periodi (come hai visto). Questo accade perché il vincolo cambia la rilassazione LP e la struttura di nodi probabili. ([repository.uantwerpen.be](https://repository.uantwerpen.be/docman/irua/575e67/151941_2019_04_06.pdf?utm_source=chatgpt.com "[PDF] Symmetry Breaking in Mixed Integer Linear Programming ..."))
        
5. **Warm start / initial solution**:
    
    - Se hai un modo per generare rapidamente una soluzione feasible (ad es. algoritmo circolare per la prima settimana + greedy per le altre), forniscila come _warm start_ (PuLP ha `warmStart=True` che passerà i valori correnti alle soluzioni iniziali) — questo spesso migliora stabilità e riduce la variabilità del seed perché dai al solver un buon incumbent da subito. ([coin-or.github.io](https://coin-or.github.io/pulp/guides/how_to_configure_solvers.html?utm_source=chatgpt.com "How to configure a solver in PuLP - COIN-OR Documentation"))
        
6. **Selezione del seed**:
    
    - Per confronto tra modelli _non_ fissare un solo seed. Riporta mediana e quantili su più seed. Se vuoi ripetibilità per debug usa un seed fisso.
        
7. **Profiling**:
    
    - Quando una configurazione è lenta, salva i log di CBC (imposta `msg=True` e `logPath`) e analizza: molte iterazioni di cuts, feasibility pump fallito, molte chiamate a strong branching, ecc. Questo ti dice se è un problema di rilassazione debole, di molte simmetrie, o di euristiche che non trovano incandescente.
        

---

## 9) Link utili / letture (i più importanti che ho usato per questa risposta)

- CBC user guide (overview, branch-and-cut): Coin-OR CBC user guide. ([coin-or.org](https://www.coin-or.org/Cbc/cbcuserguide.html?utm_source=chatgpt.com "CBC User Guide - COIN-OR"))
    
- CBC heuristics & Feasibility Pump (descrizione delle euristiche e parametri): “Getting Good Bounds in CBC / heuristics” (doc online). ([coin-or.github.io](https://coin-or.github.io/Cbc/heuristics.html?utm_source=chatgpt.com "Getting Good Bounds in CBC"))
    
- AMPL/CBC options (elenco opzioni e parametri come passFeasibilityPump, passPresolve): AMPL CBC options page. ([dev.ampl.com](https://dev.ampl.com/solvers/cbc/options.html?utm_source=chatgpt.com "CBC Options - AMPL Resources"))
    
- Paper/Survey su symmetry breaking in MILP (spiegazione teorica e casi pratici): articoli su symmetry breaking. ([ScienceDirect](https://www.sciencedirect.com/science/article/abs/pii/S0305054818300844?utm_source=chatgpt.com "Symmetry breaking in mixed integer linear programming ..."), [repository.uantwerpen.be](https://repository.uantwerpen.be/docman/irua/575e67/151941_2019_04_06.pdf?utm_source=chatgpt.com "[PDF] Symmetry Breaking in Mixed Integer Linear Programming ..."))
    
- Discussioni & issue su seed e comportamento di CBC (issue tracker e mail list PuLP/CBC): repository & forum. ([GitHub](https://github.com/coin-or/pulp/issues/613?utm_source=chatgpt.com "Add functional argument to CBC_CMD/COIN_CMD to allow setting ..."), [Google Gruppi](https://groups.google.com/g/pulp-or-discuss/c/GC6Ytid_4lI?utm_source=chatgpt.com "Tuning CBC solver parameters in PuLP - Google Groups"))
    

---

## 10) Conclusione, pratica e breve to-do (che puoi applicare subito)

1. **Eseguire esperimenti ripetuti su molti seed** (≥10) per ogni combinazione: riporta mediana e IQR del tempo. Solo così puoi dire se una ottimizzazione è “vera” o frutto del seed.
    
2. **Se vuoi stabilizzare** il comportamento:
    
    - generare un _warm start_ (strumentale per feasibility), oppure
        
    - introdurre un _debole_ obiettivo (es. minimizzare la somma di penalità leggera che preferisce soluzioni “più regolari”) — questo dà una direzione alle euristiche e spesso riduce la varianza.
        
3. **Se usi `i<j` e vuoi `balanced`**: crea orientazione con variabili `h` ma attento al costo aggiuntivo; testa entrambe le scelte (`i!=j` senza h vs `i<j` + h) e confronta mediamente su molti seed.
    
4. **Misura con e senza presolve**: registra e pubblica i risultati — possono essere opposti a seconda di `n` e formulazione.
    
5. **Automatizza la raccolta dati** e genera tabelle/boxplot per confronti statistici: mediana ± IQR è la metrica che ti salva dall’essere fuorviato da singole best/worst-run.
    

---

Se vuoi, preparo:

- uno script che esegue tutti i run (configurazioni) su una lista di seed e salva mediana/IQR + log CBC per i casi peggiori; oppure
    
- una versione della tua funzione `build_model` che automaticamente genera un _warm-start_ greedy e lo passa a CBC (con `warmStart=True`) così provi subito se questo stabilizza i tempi.
    

Dimmi cosa preferisci e ti costruisco il codice/benchmark pronto all’uso. Voglio darti risultati riproducibili, non magie — ma con dati alla mano si capisce cosa aiuta davvero.