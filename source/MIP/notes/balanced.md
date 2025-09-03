# Riepilogo breve (domande del tuo elenco)

* **Hai capito correttamente** come funziona il modello balanced: $d_i$ è l’ancora per $|h_i-a_i|$ e si minimizza la somma.
* **Perché non imponiamo $\sum \Delta_i = 0$?** perché è sempre vero (ridondante).
* **Cosa prende $d_i$?** al minimo $d_i = |\Delta_i|$, quindi valori interi.
* **Perché $d$ è continua?** per evitare branching inutile: al minimo risulterà comunque intero.
* **Perché aspettarsi oggetto = $n$ quando $n$ è pari?** perché ogni squadra ha $|\Delta_i|\ge 1$ e in una soluzione bilanciata ciascuna ha esattamente 1, quindi $\sum |\Delta_i| = n$.
* **Perché il solver si ferma anche se non hai un minimo fissato?**
  Perché cerca e mantiene un `incumbent` (miglior soluzione intera trovata) e un `bound` (dalla rilass. LP). Se il bound provato raggiunge l’incumbent (o entro gap), è ottimo; oppure si ferma per time-limit o timeout. Per il decision problem puoi richiedere di fermarsi al primo incumbent ma devi settare parametri appositi nel solver.
* **d\[i] con che valore parte?**
  Nessun valore “hard-coded”: il primo rilassamento LP assegna valori alle `d[i]`. Poi i valori cambiano via branch & bound.
* **Perché non usare `abs`?**
  `abs` è non-lineare. La linearizzazione standard con `d` è la tecnica corretta.
* **Quando viene “calcolato” l’obiettivo e perché non può risultare minore di n?**
  L’obiettivo (sum d\_i) viene valutato sul rilassamento LP e su soluzioni intere. Se il modello contiene tutti i vincoli (1)-(4) più le definizioni di `h`, allora la struttura impone che almeno `sum |Δ_i| ≥ n` per il motivo combinatorio già descritto (numero di partite dispari per squadra quando n è pari). Se ottieni un `obj < n` significa che il modello non sta contando correttamente le orientazioni (ad esempio perché non hai inserito `h`) o che qualche vincolo è mancante/errato.

## 1) Riassunto del modello *balanced* (verifica rapida)

* per ogni squadra $i$ definiamo

  $$
  h_i = \#\text{partite in casa di }i,\qquad a_i=\#\text{partite in trasferta di }i.
  $$
* costruiamo la quantità intera

  $$
  \Delta_i := h_i - a_i.
  $$

  (Questo è un intero, perché $h_i,a_i$ sono conteggi interi.)
* introduciamo una variabile ausiliaria $d_i \ge 0$ e i vincoli

  $$
  -d_i \le \Delta_i \le d_i
  $$

  cioè $d_i \ge |\Delta_i|$.
* minimizziamo $\sum_i d_i$. Questo equivale a minimizzare la somma delle differenze in valore assoluto $\sum_i |\Delta_i|$.

Quindi la formulazione è esattamente quella che hai descritto.

---

## 2) Perché non imponiamo direttamente $\sum_i \Delta_i = 0$?

Non serve perché è **sempre vero** per qualsiasi schedule: ogni partita contribuisce $+1$ al conteggio *home* di una squadra e $-1$ al conteggio *away* dell'altra, quindi sommando su tutte le squadre si ottiene 0:

$$
\sum_{i} \Delta_i = \sum_i (h_i - a_i) = (\text{numero totale di home}) - (\text{numero totale di away}) = 0.
$$

Quindi imporre $\sum_i \Delta_i = 0$ sarebbe **ridondante**, non aiuta a ottenere equilibrio squadra-per-squadra. Per ottenere equilibrio serve minimizzare le **valori assoluti** $|\Delta_i|$, non la somma (che è già 0).

---

## 3) Che cosa rappresenta $d_i$ e quali valori assume?

* $d_i$ è una *upper bound* sull'`imbalance` del team $i$: al minimo ottimo si avrà $d_i = |\Delta_i|$.
* Per quanto riguarda i valori: $|\Delta_i|$ è un intero (0,1,2,...), quindi al minimo anche $d_i$ sarà un intero. In altre parole, la soluzione ottima soddisfa $d_i\in\mathbb{Z}$, anche se abbiamo dichiarato $d_i$ continue.

---

## 4) Perché definire $d_i$ **continua** e non intera?

* dichiarare $d_i$ continue evita che il solver debba fare branching anche su queste variabili ausiliarie.
* poiché $\Delta_i$ è integrale (somme di variabili binarie), minimizzare $\sum d_i$ soggetto a $d_i \ge |\Delta_i|$ porta ad avere $d_i = |\Delta_i|$ in una soluzione ottima, e quindi $d_i$ sarà automaticamente un intero senza bisogno di imporre integrality.
* Conseguenza pratica: meno variabili discrete su cui effettuare branching → il MIP è più leggero. Questa è una tecnica standard (relaxare ausiliari che dovranno comunque prendere valori interi all’ottimo).

---

## 5) Perché l’ottimo non è frazionario?

Dato che ogni $\Delta_i$ è intero, la quantità $|\Delta_i|$ è intera, e quindi la somma $\sum_i |\Delta_i|$ è intera. Minimizzando $\sum_i d_i$ con vincoli $d_i \ge |\Delta_i|$ il solver ottiene $d_i = |\Delta_i|$ e quindi l’obiettivo è un intero. Non c’è qui un “oggetto frazionario” intrinseco: il fatto che $d_i$ sia continua non implica un obiettivo frazionario.

---

## 6) Esempio concreto: perché ti aspettavi $obj = n$ per $n$ pari

Prendiamo il caso comune in round-robin:

* numero di settimane = $n-1$.
* per squadra: numero totale di partite = $n-1$.
* se $n$ è pari, $n-1$ è **dispari**, quindi non puoi avere $h_i=a_i$ per tutte le squadre (il conteggio medio di home per squadra è $(n-1)/2$, un *mezzo*). Di conseguenza ogni squadra dovrà avere $|\Delta_i| \ge 1$.
* In un schedule bilanciato ideale ciascuna squadra avrà esattamente $\lfloor (n-1)/2\rfloor$ o $\lceil (n-1)/2\rceil$ home; quindi per ogni squadra $|\Delta_i| = 1$.
* Quindi la somma $\sum_i |\Delta_i| = n \times 1 = n$.

Esempio numerico $n=6$: ogni squadra gioca 5 partite; home possibili 2 o 3; $|\Delta_i|=1$ per ogni squadra → $\sum d_i = 6$. Quindi sì: per $n$ pari il valore ottimo minimo dell’obiettivo **tipicamente** è $n$. (Forse alcuni vincoli aggiuntivi del problema possono obbligare a peggiorare leggermente, ma la lower bound teorica è $n$.)

---

## 7) Come si ferma il solver se non è fissato un minimo da raggiungere?

Il solver MIP (CBC, Gurobi, CPLEX, ecc.) non “attende” che tu gli dica un valore obiettivo: procede tramite **branch & bound / branch & cut** e usa questi criteri di terminazione:

* **Prova di ottimalità**: il solver mantiene un **bound inferiore** (dal rilassamento LP) e un **incumbent** (miglior soluzione intera trovata). Se `bound >= incumbent` (o gap relativo/assoluto entro tolleranza) prova che l’incumbent è ottimo e si ferma.
* **Trovata soluzione fattibile**: per il *decision problem* puoi dichiarare come soddisfacente qualsiasi soluzione intera fattibile; ma il solver di default continua a cercare (a meno che tu non imposti opzioni per fermarsi al primo incumbente).
* **Time limit / max nodes / max iterations**: il solver ferma la ricerca quando scade il tempo o si raggiunge un limite.
* **Prova di infeasibilità**: se l’albero di branching o il rilassamento mostrano che non esiste soluzione intera, si ferma dichiarando `Infeasible`.

Quindi: se non imposti alcun limite, il solver cerca fino a provare ottimalità o finché non scade il tempo. Se vuoi “stop at first feasible”, devi usare opzioni/parametri del solver (CBC non ha un singolo `StopAtFirstInteger` in PuLP standard, ma puoi limitare `maxNodes=0` o usare callback in altri solver; per CBC ci sono opzioni particolari).

---

## 8) d\[i] — da dove parte e come viene modificato?

`d[i]` è una variabile del modello. Non ha “valore iniziale” nel senso procedurale; il solver risolve ripetutamente rilassamenti LP che assegnano valori alle variabili (incluse le `d[i]`) e poi fa branching:

* All’inizio il solver risolve il **LP rilassato** (integrality ignorata) e trova valori reali per tutte le variabili, inclusi i `d[i]` che verranno impostati al minimo compatibile con i vincoli `d_i >= ±(h_i - a_i)`.
* Quando si fanno branch (fissare alcune `x` a 0/1), i valori di `h_i,a_i,Δ_i` cambiano e di conseguenza anche i `d_i` nel nuovo rilassamento.
* Nel rilassamento LP, `d_i` può essere frazionario, ma alla fine (ottimo intero) risulterà `d_i = |Δ_i|` (intero). Perché? perché Δ\_i è intero quando le x sono integrali, e la minimizzazione fa scendere d al valore minimo ammesso (|Δ\_i|).

In breve: `d[i]` viene adattato dai rilassamenti LP/branching; non ha un "valore iniziale" set in codice — il solver lo calcola.

---

## 3) Perché non usare `abs(...)` direttamente?

Perché `abs(...)` è **non lineare**. I risolutori MILP accettano solo funzioni lineari (somme di variabili, moltiplicazioni con costanti). Per linearizzare `d_i = |Δ_i|` si usa la standard trick:

$$
-d_i \le \Delta_i \le d_i \qquad (d_i \ge 0)
$$

Con queste due disuguaglianze e la minimizzazione della somma dei `d_i` si ottiene esattamente `d_i = |\Delta_i|` all’ottimo. Quindi `d` è la linearizzazione (classeica e corretta) dell’assoluto.

---

## 4) Quando viene valutata la funzione obiettivo?

* **Per il rilassamento LP**: ad ogni nodo di branch il solver risolve un LP rilassato e ottiene un valore obiettivo continuo (lower bound per il problema di minimizzazione).
* **Per soluzioni intere**: quando il solver trova una soluzione intera (heuristica o branch), calcola il valore obiettivo intero di quella soluzione e lo usa come **incumbent** (upper bound).
* L’`obj` “definitivo” è il valore dell’incumbent quando il solver termina (o dell’incumbent migliore se si tronca per timeout).

Quindi non serve che *tutte* le variabili abbiano valore in un unico passaggio: il solver valuta obiettivo sul rilassamento e sulle soluzioni intere trovate; la garanzia di ottimalità arriva quando lower bound >= incumbent.

**Riguardo la tua osservazione**: se alcuni vincoli fossero omessi il solver potrebbe trovare soluzioni con obiettivo più basso ma queste sarebbero **inammissibili** per il modello corretto. Se il modello è scritto correttamente (vincoli (1)-(4) presenti), non c'è modo che la sommatoria `sum |Δ_i|` scenda sotto la lower bound teorica (ad esempio `n`) senza violare i vincoli.

---
