# ProjectEuler-J

Solutions to Project Euler problems using the [J programming language](http://www.jsoftware.com/).

## Synopsis

The scripts in this project solve the corresponding problems provided at [projecteuler.net](https://projecteuler.net) while using the fewest number of characters as possible. The only time that the efficiency of a script takes priority over its length is when the more terse solution takes an inexcusably longer amount of time to finish running (e.g. 5 minutes vs 5 seconds).

## Examples

### Solution Priority

It is possible to find the 100001<sup>st</sup> prime number with both the following scripts:

1. `p:100001`
2. `p:>:1e5`

While the first script is simpler, and probably marginally more efficient, it is not the solution that would be used in this project. As far as this project is concerned, the second script is superior because it contains fewer characters.

### Solution Comments

Because terseness is one of this project's highest priorities, unnecessary white-space is never implemented in any of its scripts. This can make them difficult to read. To compensate for this, each script will end with a commented section containing an indented process tree.

A typical script will look something like this:

```j
0-((1-2)-3-4)-5

NB. 5             5
NB. )-            Subtracted from
NB.     4             4
NB.     3-            Subtracted from 3
NB.     )-            Subtracted from
NB.         2             2
NB.         1-            Subtracted from 1
NB.     (         
NB. (             
NB. 0-            Subtracted from 0
```

A tree follows its script from top to bottom. Subprocesses are indicated by increased indentation, and must finish executing before the parent process can return a value.


## File Names

### Solutions

Solutions are stored in files named in "problemddd.ijs" format.

e.g. The solution to problem 3 is stored in **problem003.ijs**

### Efficient Solutions

If a terse solution takes significantly longer than a more efficient solution, the efficient solution will be stored in a file named in "problemddd.eff.ijs" format.

e.g. The efficient solution to problem 4 is stored in **problem004.eff.ijs**

### Input

If a problem uses input that is longer than a single short line of charcters, the input will be stored in a file named in "problemddd.txt" format.

e.g. The input for problem 13 is stored in **problem013.txt**

## ProjectEuler-J Library 

### `pej_help`

Within the project is a file named **pej.ijs** that defines several useful verbs. Once **pej.ijs** is loaded, `pej_help 'all'` will print a list of all the verbs defined by **pej.ijs**, and `pej_help 'pej_verb'` will print a description of `pej_verb` and examples of how to use it.

### Loading **pej.ijs**

From within the ProjectEuler-J directory:

**From terminal**: launch the J interpreter with the parameter **pej.ijs**

OR

**From the J interpreter**: run `load 'pej.ijs'`
