NB. pej - ProjectEuler-J Libary

pej_solve=:([:load'problem','.ijs',~[:|.3$!.'0'|.@":)"0
NB. Executes solution to problem number(s) specified
NB. 'pej_solve 3 5 8' executes solution script for problems 3, 5, and 8

pej_solverange=:[:pej_solve{.}.i.@>:@{:
NB. Executes the solutions in specified range
NB. 'pej_solverange 3 8' Executes solution scripts 3 through 8
