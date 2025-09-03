from utils import *

N=6
s, Per, Home, Opp=channeled_model_no_check(N) 

s=symmetry_breaking_constraints(N, s, Home, Per, Opp)

smt=s.to_smt2()
print(smt)