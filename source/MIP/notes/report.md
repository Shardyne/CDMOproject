\section{MIP Model}
 The Mixed Integer Linear Programming model has been built using the library
 PuLP in python and tested with twoo different solvers (CBC[http://www.decom.ufop.br/haroldo/files/cbcCommandLine.pdf], GLPK[https://most.ccib.rutgers.edu/glpk.pdf]).
\subsection{Decision Variables}
MIP model è basato su queste 3 tipologia di decision variables
- 4D boolean variables x_{W}_{P}_{i}_{j} che indicano rispettiavemnte la settimana, periodo, squadra (home nel caso di optimize), squadra (away sempre nel caso di optimize). Questo rispecchia la struttura descritta nel paper  Schedulinginsports:Anannotatedbibliography
 GrahamKendalla,SigridKnustb,∗,CelsoC.Ribeiroc,SebastiánUrrutiad
- 4D boolean variables x_{W}_{P}_{i}_{j} ma vengono generate solo per i<j, così da dimizzare le variabili da usare. Essendo che settandole così si perde home-away per la versione optimize vengono generate altre variabili continuos una corrispondente a ognuna 
- 
\subsection{Objective function}
\subsection{Constraints}
\subsection{Validation}
\section{Conclusions}