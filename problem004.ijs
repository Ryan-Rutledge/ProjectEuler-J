 echo >./(#~(-:|.)@":"0),*/~i.1e3

NB. i.1e3         List of numbers from 0 up to 1000
NB. */~           Multiply each list item by each list item
NB. ,             Flatten table into list
NB. "0            For each list item
NB.     ":            Convert number to string
NB.     @             Then
NB.         |.            Reverse string
NB.         -:            Is equal to original string
NB.     #~            List item, if true
NB. >./           Greatest list number
