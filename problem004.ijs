>./(#~(-:|.)@":"0),*/~i.1e3

NB. i.1e3         List of numbers from 0 up to 1000
NB. */~           Multiply each item by each item
NB. ,             Flatten table into list
NB. )             Begin hook
NB.     ":"0          Convert each hook arg item to string
NB.     )@            Begin hook
NB.         |.            Reverse string
NB.         -:            Is equal to hook arg
NB.     (             End hook
NB.     #~            Hook arg items where right arg items are 1
NB. (             End hook
NB. >./           Greatest number in list
