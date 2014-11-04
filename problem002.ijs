+/(,_2&{+4*{:)^:9[2 8

NB. [2 8             List of first two even numbers of the fibonacci sequence
NB. ^:9              Loop 9 times (There are 11 even fibonacci numbers below 4000000, and the first two are already provided)
NB.     )            Begin Fork
NB.         {:           Last fork arg item
NB.             *            Multiplied by
NB.             4            4
NB.         +            Added to
NB.         _2&{         Second to last fork arg item
NB.         ,            Append to fork arg
NB.     (            End Fork
NB. +/               Sum list

