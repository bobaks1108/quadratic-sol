Quadratic equation solution calculator.
======================================

This bash script calculates the solutions of a Quadratic Equation using parameters passed in as arguments (a,b, and c). A quadratic equation is an algbraic equation in the format of:  

```
ax^2 + bx + c = 0
```

An example quadratic equation is:

```
5x^2 + 6x + 1 = 0
```

For this the solution is: x = −0.2 or x = −1

To run the program:

In a bash terminal on a linux machine, change to the directory containing the quadratic_sol.sh script and set the permission on it to executable for the owner (presuming you are the owner of the file) using:
```
chmod u=rwx quadratic_sol.sh
```

Run the script using:

```
./quadratic_sol.sh [arguments]
```

You must supply 3 arguments for a, b and c.

* all values must be numbers (negative of postitive, decimals are allowed)
* the value of 'a' cannot be 0

E.G.

```
./quadratic_sol.sh 5 6 1
```
Please note: Some combinations of values for a,b and c do not have solutions.

For more information about Quadratic Equation please see:
```
https://www.mathsisfun.com/quadratic-equation-solver.html
http://www.bbc.co.uk/schools/gcsebitesize/maths/algebra/quadequationshirev3.shtml
```

 
