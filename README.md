#ProjectEuler-J

Solutions to Project Euler problems using the [J programming language](http://www.jsoftware.com/).

##Synopsis

The scripts in this project solve the corresponding problems provided at [projecteuler.net](https://projecteuler.net) while using the fewest number of characters as possible. The only time that the efficiency of a script takes priority over its length is when the more terse solution takes an inexcusably longer amount of time to finish running (e.g. 5 minutes vs 5 seconds)

##Examples

It is possible to find the 100001 prime number with both the following scripts:

1. `p:100001`
2. `p:>:1e5`

While the first script is simpler, and probably marginally more efficient, it is not the solution that would be used in this project. As far as this project is concerned, the second script is superior because it contains fewer characters.

##Running Scripts

From within the J console, type `load 'path/to/problem[NUMBER].ijx'` and press ENTER to execute the script.

Because each script is prepended with the `echo` verb, the output of the script will print to the screen as soon as it is finished running.
