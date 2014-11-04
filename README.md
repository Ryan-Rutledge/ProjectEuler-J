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

### Comments

Because terseness is one of this project's highest priorities, unnecessary white-space is never implemented in any of its scripts. This can make them difficult to read. To compensate for this, each script will end with a commented section containing an indented process tree.

A typical script will look something like this:

```
0-((1-2)-3-4)-5

NB. 5            5
NB. -            Subtracted from
NB.     4            4
NB.     -            Subtracted from
NB.     3            3
NB.     -            Subtracted from
NB.         2            2
NB.         -            Subtracted from
NB.         1            1
NB. -            Subtracted from
NB. 0            0
```

A tree follows its script from top to bottom. Subprocesses are indicated by increased indentation, and must finish executing before the parent process can return a value.

## Running Scripts

### Custom `pej` verb

Within the project is a file named **pej.ijs** that defines the custom verb `pej`. `pej` takes a number, or a list of numbers, as its right argument and both prints out and executes the corresponding script(s).

For example, `pej 3 15` will execute, and read to standard output, scripts **problem001.ijs** and **problem015.ijs**.

### Loading `pej`

From within the ProjectEuler-J directory:

* From terminal: launch the J interpreter with the parameter **pej.ijs**
* From the J interpreter: run `load 'pej.ijs'`

