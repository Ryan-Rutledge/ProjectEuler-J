#ProjectEuler-J

Solutions to Project Euler problems using the [J programming language](http://www.jsoftware.com/).

##Synopsis

The scripts in this project solve the corresponding problems provided at [projecteuler.net](https://projecteuler.net) while using the fewest number of characters as possible. The only time that the efficiency of a script takes priority over its length is when the more terse solution takes an inexcusably longer amount of time to finish running (e.g. 5 minutes vs 5 seconds)

##Examples

###Solution Priority

It is possible to find the 100001 prime number with both the following scripts:

1. `p:100001`
2. `p:>:1e5`

While the first script is simpler, and probably marginally more efficient, it is not the solution that would be used in this project. As far as this project is concerned, the second script is superior because it contains fewer characters.

###Comments

Because terseness is one of this project's highest priorities, unnecessary whitespace is never implemented in any of its scripts. This can make them difficult to read. To compensate for this, each script will end with a commented section containing an indented process tree.

A typical script will look something like this:

    echo 0-((1-2)-3-4)-5
    
    NB. 5            5
    NB. -            subtracted from
    NB.     4            4
    NB.     -            subtracted from
    NB.     3            3
    NB.     -            subtracted from
    NB.         2            2
    NB.         -            subtracted from
    NB.         1            1
    NB. -            subtracted from
    NB. 0            zero

Each tree follows its script from top to bottom. Subprocesses are indicated by increased indentation.

##Running Scripts

From within the J console, type `load 'path/to/problem[NUMBER].ijx'` and press ENTER to execute the script.

Each script ends by executing the `echo` command, so the act of loading a script will also print its output to the screen.
