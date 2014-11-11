*/(,1e3-+/)}:>:I.0=1|1e3*%/|."1 i.2 500

NB. i.2 500     2x200 list of numbers from 0 to 1000
NB. |."1        Reverse sublists
NB. %/          Recriprocal of each list item
NB. 1e3*        Multiplied by 1000
NB. 1|          Modulo of 1
NB. 0=          Is equal to 0
NB. I.          Index of true list items
NB. >:          Add 1 to each list item
NB. }:          Remove last item
NB. )           Begin fork
NB.     +/          Sum of fork arg items
NB.     1e3-        Subtract from 1000
NB.     ,           Append to fork arg
NB. (           End fork
NB. */          Product of list items
