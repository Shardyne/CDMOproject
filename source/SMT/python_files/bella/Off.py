from z3 import *
import json, os, time

# Create the circle method
def offline_schedule(n):

    # do it just for even n's
    if n%2==0:

        # fix the team 1 and then move the remaining teams
        move=list(range(2,n+1))
        fix=1
        matches={}

        for w in range(1,n):

            #take the vector ofall the teams then create the matches
            teams=[fix]+move
            matches[w]=[[teams[i], teams[-i-1]] for i in range(n//2)]
            change=move.pop(-1)
            move=[change]+move
        
        return matches
        
    else:
        return 'n should be even and higher 2'

def build_opp_table(schedule, n):
    W = n - 1
    opp = {(t, w): 0 for t in range(1, n+1) for w in range(1, W+1)}
    for w, pairs in schedule.items():
        for a, b in pairs:
            opp[(a, w)] = b
            opp[(b, w)] = a
    return opp

def emit_define_fun_opp(schedule, n) -> str:
    W = n - 1
    opp = build_opp_table(schedule, n)

    def ite_over_w(t):
        s = "0"  # default (unused if your model only queries valid w)
        for w in range(W, 0, -1):
            s = f"(ite (= w {w}) {opp[(t,w)]} {s})"
        return s

    body = "0"
    for t in range(n, 0, -1):
        body = f"(ite (= t {t}) {ite_over_w(t)} {body})"

    return f"(define-fun Opp ((t Int) (w Int)) Int\n  {body}\n)"

# --- use it ---
n=6
sched = offline_schedule(n)
with open(f"SMT/smt-lib_files/offline/pairings_{n}.smt2", "w") as f:
    f.write(emit_define_fun_opp(sched, n))




            


