Quadratic equation solution calculator.
======================================

This bash script calculates the solutions of a Quadratic Equation using parameters passed into script as arguments. A quadratic equation is an algbraic equation in the format of:  

```
ax^2 + bx + c = 0
```

An example quadratic equation is:

```
5x^2 + 6x + 1 = 0
```

For this the solution is: x = −0.2 or x = −1

To run the program:

In a bash terminal on a linux machine, change to the directory containing the script and set the permission to executable for the owner of the file (presuming you are the owner of the file) using:
```
chmod u=rwx quadratic_sol.sh
```

Run the script using:

```
./quadratic_sol.sh [arguments]
```

You must supply 3 arguments for a,b and c.

* all values must be integers (i.e. whole numbers - negative of postitive)
* the value of a cannot be 0

E.G.

```
./quadratic_sol.sh 5 6 1
```
Please note: Some combinations of values do not have solutions.

For more information about Quadratic Equation please see:
```
https://www.mathsisfun.com/quadratic-equation-solver.html
http://www.bbc.co.uk/schools/gcsebitesize/maths/algebra/quadequationshirev3.shtml
```

 
