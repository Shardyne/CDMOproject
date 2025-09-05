https://pypi.org/project/PuLP/
https://coin-or.github.io/pulp/technical/constants.html

problema randomness:
https://coin-or.github.io/pulp/technical/solvers.html
https://github.com/coin-or/pulp/issues/545#issuecomment-1355737609
https://github.com/coin-or/Cbc/discussions/379#discussioncomment-570712
https://coin-or.github.io/pulp/technical/solvers.html#pulp.apis.PULP_CBC_CMD.pulp_cbc_path
http://www.decom.ufop.br/haroldo/files/cbcCommandLine.pdf

feasibility_pump:
https://www.dei.unipd.it/~fisch/papers/feasibility_pump.pdf

how to warm_start:
https://coin-or.github.io/pulp/guides/how_to_mip_start.html

ltro solver usato
https://most.ccib.rutgers.edu/glpk.pdf

Se non settato correttamente il seed usato è -1 che corrsiponde ad uno statico:
String of 262626, is illegal for integer parameter randomSeed value remains 1234567
Option for gomoryCuts changed from ifmove to on
Option for knapsackCuts changed from ifmove to on
maxSolutions was changed from 2147483647 to 1
options=[f"RandomS 1234567"]
impostandolo a 0 invece si usa il tempo per generare un tempo casuale
Visto hce nella documentazione non è definito esattamente il comportamento, questo è stato dedotto dal fatto che usare esplicitamente come RandomS 1234567 equivaleva alle prestazioni usando il defoul -1.

- provato versione senza constraint e con variabili i =  i  
- limite raggiunto prova_12  
- provato versione senza simmetry ma senza var i = i  
- limite raggiunto v2_no_sim_12 (leggermente più lento di prima)  
- fatto test singolo per ogni simmetry senza var i = i  
- performance -> v2_one_sim_12 (passi da n! scelte a (n-1)! grandi migliorie) e v2_two_sim_12 migliorano il limite precedente di 12 non superano 14 (perggiore three non arriva nemmeno a 12)
- combianzione one/two 
- limite raggiunto v2_one_two_sim_14
- rifare tutti i test con SEED random 0

to do  
- vedi se la symmetri in v1 è da aggiungere a v2
- togli direttamente le varibili i <= j
- la prima scquadra del primo constraint scelta random tra gli n
- Alcuni solver (Gurobi/CPLEX) possono permettere di impostare priorità di branching e altre opzioni che influenzano su quali variabili branchare prima; ma non inizieranno a branchare su una variabile se non è dichiarata intera.CPLEX / Gurobi: commerciali, molto ottimizzati. Hanno:

presolve molto aggressivo,

cutting planes avanzati,

heuristics sofisticate (RINS, polishing),

callback API per aggiungere tagli lazy, generare cuts dinamici, Benders callback, ecc.
Sono spesso molto più veloci in pratica su MILP difficili

# Come ho implementato i symmetry breaking

A. **Ancora di etichettamento (team 1 in week 1, period 1)**
   Ho fissato che nella settimana 1, periodo 1, il team 1 deve comparire (in una delle due posizioni). Questo ELIMINA la permutazione “banale” dei nomi delle squadre: senza un’**ANCORA**, rinominare le squadre produce istanze equivalenti e l’albero di branch-and-bound esplode. Tecnicamente è un vincolo di copertura su quello slot:

   $$
   \sum_{j\neq 1}\big(x_{1,1,1,j}+x_{1,1,j,1}\big)=1.
   $$

   È una rottura **molto leggera** e sicura (non elimina soluzioni “vere”, conserva almeno un rappresentante per ogni classe d’isomorfismo). ([SpringerLink][1])

C. **Ordinamento canonico delle settimane (anti-permutazione di settimane)**
   Per ogni slot ti calcoli la somma $i$ + $j$. 
   Ho introdotto per ogni settimana $w$ una **firma** (*signature guarda sotto per capire cos'è*) lineare:

   $$
   s_w \;=\; \sum_{p}\sum_{i<j} (i+j)\,\big(x_{w,p,i,j}+x_{w,p,j,i}\big),
   $$

   e ho imposto $ s_1 \le s_2 \le \dots \le s_{n-1}$.
   Intuizione: se permuti le settimane, cambi l’ordine con cui compaiono certe coppie e quindi cambi la somma dei pesi $(i+j)$. Ordinandole per firma non decrescente elimini (una parte) delle simmetrie di permutazione globale delle settimane, senza dover scrivere un lessico completo (che sarebbe più costoso). Questi sono **vincoli “statici” di symmetry breaking** in stile “lex/ordering” (ma con una proxy). ([ojs.aaai.org][2], [SpringerLink][1])

D. **Ordinamento canonico dei periodi (anti-permutazione globale degli slot)**
   In modo analogo, ho definito una firma per ogni **periodo** aggregando su **tutte** le settimane:

   $$
   t_p \;=\; \sum_{w}\sum_{i<j} (i+j)\,\big(x_{w,p,i,j}+x_{w,p,j,i}\big),
   $$

   e imposto $ t_1 \le t_2 \le \dots \le t_{n/2}$.
   Questo uccide la simmetria “periodo 1 $\leftrightarrow$ periodo 3 per tutte le settimane” con un solo vincolo per coppia di periodi, invece di dover introdurre un ordinamento lessicografico completo delle matrici week×period. È lo stesso spirito degli **orbitopes** (rompere simmetrie di righe/colonne in matrici 0-1), ma in versione “povera” e compatibile con PuLP/CBC senza callback. ([optimization-online.org][3], [arXiv][4])

B. **Orientazione canonica nella settimana 1**
   Per eliminare la simmetria home/away, ma senza vincolare troppo la struttura delle settimane successive.
   Per ogni periodo $p$ della **settimana 1** ho imposto che, se in quello slot gioca la coppia $\{i,j\}$, allora il *home* deve essere il min($i,j$). In pratica, per la settimana 1 disabilito tutte le scelte con $j<i$:

   $$
   \sum_{i>j} x_{1,p,i,j} = 0 \quad \forall p.
   $$

   Così elimino metà delle simmetrie dovute allo scambio home/away **almeno** nella prima settimana. (Estenderlo a tutte le settimane è possibile, ma comincia a interagire con altri vincoli e può diventare troppo rigido.)
   
   > Contro: peggiora (32s → 52s), perché l'implementazione attuale non elimina variabili ma aggiunge vincoli. l’LP ha più vincoli e più colonne non necessarie → il rilassamento LP è più pesante da risolvere → CBC rallenta. SOL = FARLO DURANTE LA CREAZIONE DELLE VARIBILI

   > Pro: forse utile per versione bilanciata perchè da un ancora

> Nota: nelle firme ho usato **variabili continue** (si possono lasciare continuous) perché le uguaglianze con somme di binarie **forzano** comunque valori interi alle $s_w, t_p$ nelle soluzioni intere. Se le dichiari “Integer”, aggiungi interi superflui e peggiori il branch-and-bound.

### Cosa significa _signature_ (concetto)
- Una _signature_ è semplicemente una **etichetta numerica** calcolata come funzione lineare delle variabili binarie (`x`).
- La usi come _proxy_ per confrontare righe/colonne (qui: settimane o periodi) e imporre un ordinamento (canonical representative): l'idea è che tra due settimane diverse una avrà signature più piccola e l'ordinamento `sig_w ≤ sig_{w+1}` impone una sola rappresentante della classe di permutazioni.
- **Problema pratico**: se molte settimane (o periodi) hanno la stessa signature, il vincolo non toglie simmetrie; se invece la signature varia poco, i vincoli possono costringere il solver a cambiare molte scelte per rispettare un ordine artificiale → costoso.
#### Dove e perché le signature _possono peggiorare_ le prestazioni
1. **Vincoli densi**  
    `sig_w == Σ (i+j)*x[...]` coinvolge _molte_ variabili `x`. Hai aggiunto vincoli molto **densi** (molti coefficienti non-zero). Vincoli densi aumentano il costo dell’algoritmo LP/branch-and-cut (più calcoli numerici, più fill-in nelle fattorizzazioni).
2. **Variabili intere superflue**  
    se dichiari `sig_w` come `Integer`, hai aggiunto nuove variabili intere; il solver potrebbe dover branchare anche su queste. **Meglio dichiararle continue**, vedi sotto.
3. **Coefficiente grande / scala**  
    usare `(i+j)` con `i,j` fino a `n` genera coefficienti dell’ordine di `O(n)`. Coefficienti grandi possono peggiorare la stabilità numerica e l’efficacia dei tagli; inoltre l’ordine potrebbe non essere “discriminante” (molte righe tornano uguali o vicine).
4. **Vincoli che forzano (troppa) ristrutturazione**  
    la constraint di ordinamento costringe il solver a cercare soluzioni con struttura particolare; per raggiungerla il solver potrebbe abbandonare le territori che gli heuristics trovano facilmente → più tempo.
5. **Firma non discriminante**  
    come abbiamo visto, `sig_w` può essere uguale per tutte le settimane, quindi il vincolo non aiuta. `sig_p` invece costringe una rietichettatura dei periodi — questo può richiedere riorganizzazione costosa.

## Cosa sono le variabili ausiliarie

- Sono variabili **calcolate a partire dalle decisioni principali** (`x[w,p,i,j]` binarie).
- Servono solo per **fare symmetry breaking** o per “misurare” qualcosa (somma di ID delle squadre, orientamento, ecc.).
- **Non rappresentano decisioni reali** nel senso del modello: non scegli “sig_w = 5” come parte della soluzione, viene determinato automaticamente dalle `x`.

Esempio:

```python
sig_w = sum((i+j) * x[w,p,i,j] for p in P for i,j in matches)
```

Qui `sig_w` è solo un “contatore” delle squadre in quella settimana; non è qualcosa che vuoi ottimizzare o su cui branchare.
### Perché branching sulle ausiliarie è inutile

- Il solver MILP branch-and-bound cerca **variabili intere frazionarie** per dividere il problema in sotto-problemi.
- Se dichiari la signature come `Integer`, il solver vede `sig_w` come variabile che **deve essere intera**, quindi proverà a branchare su di essa.
- Ma `sig_w` **è già vincolata dalle binarie `x`**: ogni valore frazionario non è possibile nella soluzione finale.
- Quindi il branching su `sig_w` **non riduce la ricerca** e **aggiunge nodi inutili** → rallenta il solver.

In breve: stai dicendo al solver di fare lavoro extra su variabili che **non hanno reale libertà decisionale**.
Come si evita ->Dichiarando le ausiliarie come **Continuous**, il solver le risolve direttamente nella rilassazione LP senza branchare.

### 🔑 Regola generale

> Variabili **ausiliarie vincolate da altre decisioni** → dichiararle `Continuous`.  
> Variabili **decisioni effettive (binario/intero)** → dichiararle `Binary` o `Integer`.

`Binary` vs `Integer`
Designa variabili con dominio {0,1}.  
In PuLP crea una variabile intera con bounds 0..1 e categoria binaria.  
I solver (CBC, Gurobi, CPLEX, ...) possono applicare preprocessing e cutting specifici per binarie (es. clique cuts, cover cuts, propagation più aggressiva), e branch sulla singola scelta 0/1 è più specializzato.  
È semanticamente più chiaro: quando vuoi una scelta {vero/falso}, usa LpBinary.

---

### Orientazione canonica (canonical orientation)
è una tecnica di symmetry breaking in cui, quando due configurazioni sono simmetriche (es. una partita i in casa contro j oppure j in casa contro i), si sceglie una sola rappresentazione standard (canonica) da mantenere nel modello, imponendo vincoli che vietano le altre.

---

### Come PuLP definisce vincoli e obiettivo

#### Creare il problema

```python
from pulp import LpProblem, LpMinimize, LpMaximize
prob = LpProblem("nome", LpMinimize)  # o LpMaximize
```
#### Aggiungere l'obiettivo
- In PuLP la **prima** cosa che aggiungi con `prob +=` e **senza** confronto (`==`, `<=`, `>=`) è interpretata come _obiettivo_:

```python
prob += lpSum(d[i] for i in T)  # obiettivo (minimizza per LpMinimize)
```
- Puoi comunque aggiungere l’obiettivo in fondo. È la stessa cosa.
#### Aggiungere vincoli
- Confronti ⇒ vincoli:

```python
prob += lpSum(x[(w,p,i,j)] for i in T for j in T if i != j) == 1, "one_match"
prob += lpSum(x[(w,p,i,j)] for ...) <= 2, "period_cap"
```
- `prob.constraints` è un dict che contiene i vincoli aggiunti.
#### Somme lineari
Usa `pulp.lpSum` per costruire espressioni da passare direttamente al solver (più efficiente di `sum()` per oggetti PuLP).
#### Controlli e estrazione valori
- Dopo `prob.solve(solver)`:
    - stato: `pulp.LpStatus[prob.status]` (es. `"Optimal"`, `"Not Solved"`, `"Infeasible"`).
    - valore di una variabile: `pulp.value(var)` oppure `var.value()`.
    - valore obiettivo: `pulp.value(prob.objective)`.
    - lista variabili: `prob.variables()`.

Se `sig_w` è continuous e le `x` sono binarie, nella soluzione intera `pulp.value(sig_w)` sarà un intero; ma non avrai avuto branching su `sig_w`.

---

### Esempio concreto (n = 6) — uso la tabella che hai mostrato prima
Per comodità riprendo la tabella (week in colonne, period in righe):
**Period 1** (p=1):
- w1: 2 v 4 → i+j = 6
- w2: 5 v 1 → 6
- w3: 3 v 6 → 9
- w4: 3 v 4 → 7
- w5: 6 v 2 → 8
**Period 2** (p=2):
- w1: 5 v 6 → 11
- w2: 2 v 3 → 5
- w3: 4 v 5 → 9
- w4: 6 v 1 → 7
- w5: 1 v 4 → 5
**Period 3** (p=3):
- w1: 1 v 3 → 4
- w2: 4 v 6 → 10
- w3: 2 v 1 → 3
- w4: 5 v 2 → 7
- w5: 3 v 5 → 8
#### Calcolo delle **signature_week**
Per ogni settimana `w` sommiamo i valori `(i+j)` di tutti i periodi in quella settimana
- **Week 1**: period1(6) + period2(11) + period3(4) = **21**
- **Week 2**: 6 + 5 + 10 = **21**
- **Week 3**: 9 + 9 + 3 = **21**
- **Week 4**: 7 + 7 + 7 = **21**
- **Week 5**: 8 + 5 + 8 = **21**
> Qui tutte le `sig_w` sono **uguali** (21).  
> Quindi il vincolo `sig_w ≤ sig_{w+1}` è soddisfatto **ma non rompe** la simmetria fra le settimane: l’ordinamento non impone nessuna preferenza perché sono tutte uguali.
#### Calcolo delle **signature_period**
Per ogni periodo `p` sommiamo `(i+j)` su tutte le settimane:
- **sig_p1** (period 1): 6 + 6 + 9 + 7 + 8 = **36**
- **sig_p2** (period 2): 11 + 5 + 9 + 7 + 5 = **37**
- **sig_p3** (period 3): 4 + 10 + 3 + 7 + 8 = **32**
Quindi i valori sono `[36, 37, 32]`. I vincoli `sig_p1 ≤ sig_p2 ≤ sig_p3` richiedono **36 ≤ 37 ≤ 32**, ma **37 ≤ 32 è falso**. Per soddisfare quei vincoli il solver deve trovare una soluzione equivalente in cui i tre totali siano non decrescenti (p.e. rietichettare i periodi o scegliere accoppiamenti diversi).

---

Ottime osservazioni — ci sono molte cose sottili in gioco. Ti spiego punto per punto, con esempi concreti e consigli pratici: perché qualche semplice ancora può far esplodere il guadagno, perché altre rotture di simmetria possono peggiorare le prestazioni, cosa perdi/guadagni introducendo fissaggi casuali, e come ragionare sulle _signature_ e sulle disuguaglianze `<=`.

---

## 1) Perché una semplice ancora (team 1 in week1 period1) può ridurre 40s → 4s
Breve risposta: **riduce drasticamente la simmetria “global label”** che il solver altrimenti esplora.
Dettaglio:
- Il problema ha molte soluzioni _isomorfe_ ottenute semplicemente rinominando le squadre (permutazioni dell’insieme T). Se non rompi questa simmetria, il branch-and-bound può esplorare molte branche equivalenti.
- Fissando la presenza di una squadra in un posto preciso scegli una _rappresentante_ per ogni classe di soluzioni isomorfe: la ricerca non deve più visitare tutte le permutazioni.
- È un vincolo **molto sparso e poco costoso** (poche variabili coinvolte), quindi aiuta molto le euristiche iniziali (feasibility pump, primal heuristics) e riduce nodi.

Esempio piccolo: se ci sono `k!` permutazioni identiche tra loro, rompere le etichette riduce drasticamente l’albero.

---

## 2) E se fissassi _casualmente_ una partita (i e j) o settimana/periodo casuale? È abuso? Cosa perdi/guadagni?
Dipende **come** fissi:
### A) Fissare _solo_ che team `t` appaia in (w,p) — molto sicuro
- Guadagno: rompi simmetria globale come prima.
- Perdita: praticamente nulla (quasi sempre esiste una soluzione equivalente con `t` in quel posto).
- Conclusione: **sicuro e utile**.
### B) Fissare _anche_ l’avversario `j` (cioè fissare la partita esatta `i vs j` in (w,p)) — rischio

- Potresti imporre una combinazione **incompatibile** con altri vincoli (es. il vincolo “at most twice in same period” o altri fissaggi), rendendo il modello **infeasible**.
- Anche se non infeasible, potresti obbligare il modello a cercare in una “zona” della soluzione più difficile da raggiungere per gli heuristics → peggiora tempi.
- Conclusione: fissare la coppia completa è **più rischioso**; va fatto solo se sei certo (o provato) che quella coppia compare in almeno una soluzione.
### C) Scegliere (w,p) casuale per l’ancora — ok, ma attenzione

- Fissare `team 1` in uno slot casuale è ancora un’ancora valida.
- Ma se scegli uno slot che per combinazione con altri vincoli è meno “compatibile” (es. periodo già molto vincolato), l’effetto potrebbe essere neutro o negativo.

**Regola pratica:** è molto più sicuro e spesso più efficace fissare _chi_ (es. team 1) in uno slot, non fissare _anche contro chi_. 
E preferisci slot “naturali” come week1-period1 o la prima settimana: sono convenzioni usate nella letteratura (circle method).

---

## 3) Cosa si perde e cosa si guadagna fissando troppo

- **Perdi**: libertà del solver di scegliere una soluzione “facile” per gli heuristics; potresti eliminare le soluzioni più facilmente trovabili dagli heuristics iniziali → peggiore performance.
- **Guadagni**: meno classi isomorfe → meno rami equivalenti da esplorare → spesso meno nodi e meno tempo.
- **Trade-off**: fissaggi leggeri (una sola ancora) spesso danno molto; fissaggi pesanti (molte uguaglianze) possono renderlo più difficile.

---

## 4) Perché le _signature_ (ordinamento canonico) sono delicate — che stanno facendo esattamente?

Riepilogo: per settimana `w` hai
```text
sig_w = Σ_{p,i,j} weight(i,j) * x[w,p,i,j]
```
e imponi `sig_w ≤ sig_{w+1}` per rompere le permutazioni di settimane. Stessa idea per `sig_p` (periodi).
### Che cosa fanno concretamente?

- **Non** eliminano formalmente tutte le permutazioni: scelgono una _rappresentante_ secondo il valore della signature.
- Se due settimane hanno la stessa signature (tie), `sig_w ≤ sig_{w+1}` non impedisce lo scambio: entrambi valgono lo stesso, quindi molte permutazioni rimangono.
- Le signature sono **proxy**: servono a distinguere settimane/periodi usando un numero combinato; non sono una soluzione esatta per tutte le simmetrie.
### Perché usare `<=` (non `<`)?

- Con `<=` permetti anche uguaglianze: pratico perché altrimenti dovresti imporre `sig_w + 1 ≤ sig_{w+1}` con numeri interi (ma costerebbe usare coefficienti e big-M).
- `<=` è più facile da modellare, ma **meno forte**: più tie, meno riduzione di simmetria.
### Effetto pratico: perché a volte aiuta e a volte danneggia?

- **Aiuta** quando la signature è molto discriminante (molte settimane hanno valori diversi): rompe molte permutazioni e il solver esplora meno rami.
    
- **Peggiora** quando:
    - la signature è _poco discriminante_ (molti tie) → aggiungi vincoli densi ma che non tagliano; solo appesantiscono l’LP.
    - i coefficienti (i+j) rendono i vincoli densi e con numeri grandi → peggiora numerica/presolve.

Quindi **dipende dalla struttura dell’istanza**: nel tuo caso `signature_week` poteva essere discriminante (metà delle settimane hanno valori diversi) → ha dimezzato i tempi; `signature_period` ha reso il problema più rigido (dense, meno compatibile con altre strutture) → ha raddoppiato i tempi.
## 5) Perché firma periodi può raddoppiare i tempi mentre quella delle settimane dimezza

Possibili cause pratiche, spesso combinate:
1. **Sparsità vs densità dei vincoli**
    - `signature_period[p] == Σ_w Σ_{i,j} (i+j) x[w,p,i,j]` tocca _tutte_ le settimane per quel periodo: vincolo molto denso.
    - `signature_week[w]` tocca _tutti_ i periodi ma solo in quella settimana — la differenza strutturale può cambiare il modo in cui l’LP viene fattorizzato e il presolve lavora.
2. **Interazione con il “period cap ≤ 2”**
    - Il vincolo globale per periodi limita quante volte una squadra può apparire in quello stesso periodo. L’ordinamento dei periodi può entrare in conflitto con questa struttura e peggiorare l’exploration.
3. **Heuristics & rilassamento LP**
    - Alcune orientazioni SB rendono il rilassamento LP peggiore (meno informativo), portando a peggior incumbent o peggiore bound → più nodi.
    - L’altro ordinamento potrebbe invece dare un rilassamento “più ordinato” che aiuta heuristics a trovare soluzioni migliori presto.
4. **Tie distribution differente**
    - Se le signature dei periodi generano molti tie (o variazioni piccole) il vincolo non aiuta ma appesantisce.

Quindi non è un paradosso: SB può aiutare o peggiorare a seconda della **struttura del modello** e di come gli heuristics del solver interagiscono.

---

[1]: https://link.springer.com/content/pdf/10.1007/978-3-540-68279-0_17.pdf?utm_source=chatgpt.com "Symmetry in Integer Linear Programming"
[2]: https://ojs.aaai.org/index.php/AAAI/article/view/8437/8296?utm_source=chatgpt.com "[PDF] Symmetry Breaking Constraints: Recent Results"
[3]: https://optimization-online.org/wp-content/uploads/2006/03/1354.pdf?utm_source=chatgpt.com "[PDF] PACKING AND PARTITIONING ORBITOPES - Optimization Online"
[4]: https://arxiv.org/abs/math/0603678?utm_source=chatgpt.com "[math/0603678] Packing and Partitioning Orbitopes - arXiv"
[5]: https://coin-or.github.io/Cbc/intro.html?utm_source=chatgpt.com "Introduction | Cbc - COIN-OR Documentation"
[6]: https://en.wikipedia.org/wiki/Round-robin_tournament?utm_source=chatgpt.com "Round-robin tournament"
[7]: https://mat.tepper.cmu.edu/trick/survey.pdf?utm_source=chatgpt.com "[PDF] Round robin scheduling - a survey"
[8]: https://www.gams.com/50/docs/S_CBC.html?utm_source=chatgpt.com "CBC - GAMS"
[9]: https://www.coin-or.org/Cbc/cbcuserguide.html?utm_source=chatgpt.com "CBC User Guide - COIN-OR"
[10]: https://coin-or.github.io/pulp/technical/pulp.html?utm_source=chatgpt.com "pulp: Pulp classes — PuLP 3.0.2 documentation"
[11]: https://www.coin-or.org/PuLP/pulp.html?utm_source=chatgpt.com "Pulp classes — PuLP v1.4.6 documentation - COIN-OR"
[12]: https://kilthub.cmu.edu/articles/journal_contribution/Symmetry_in_Integer_Linear_Programming/6708215?utm_source=chatgpt.com "Symmetry in Integer Linear Programming - Carnegie Mellon University"
