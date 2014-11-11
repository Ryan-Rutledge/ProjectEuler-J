+/}:(,_2&{+4*{:)^:(4e6>{:)^:_[2 8

NB. [2 8        List of first two even numbers of the Fibonacci sequence
NB. )^:_        While
NB.     {:          Last item of list
NB.     4e6>        Is less than 6000000
NB. )^:(        Loop fork
NB.     {:          Last fork arg item
NB.     4*          Multiplied by 4
NB.     +           Added to
NB.     _2&{        Second to last fork arg item
NB.     ,           Append to fork arg
NB. (           End Fork
NB. }:          Remove last list item
NB. +/          Sum of list items
