#!/bin/bash
# Script to calculate the solutions to a Quadratic Equation
# by Bob Guinn.

echo "Quadratic equation solution calculator"
echo "  ax^2 + bx + c = 0"
echo

display_help() {
    echo -e "Usage: ./quadratic_sol.sh [arguments]" >&2
    echo
    echo "  You must supply 3 arguments for a, b and c"
    echo "  of the quadratic equation."
    echo
    echo "The script requires you to have bc command installed"
    echo "on your system, if the bc command not found you can"
    echo "easily install it by:"
    echo "on Ubuntu / Debian machine using:" 
    echo "apt-get install bc"
    echo "or on CentOS / RHEL / Fedora using:"
    echo "yum install bc" 
    echo

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
  display_help
else

  # Check if the user entered less than 3 arguments, if so just display 
  # an error and the help, if not calculate the solutions.
  if [ "$#" -lt 3 ] ; then
    echo "You must to supply 3 values."
    display_help
  else

    echo "Values supplied:"

    echo "a = $1"
    echo "b = $2"
    echo "c = $3"
    echo

    # Firstly check if the values entered are valid i.e.
    # check if quadratic equation has real solutions, which can be checked
    # by calculating the equation's discriminant.
    # If this is negative then this will mean the formuala does not
    # have any real solutions because it has to calculate the 
    # square root of a negative number.
    
    checkit=$(echo "$2*$2 - 4*$1*$3" | bc -l)
    if [ $checkit -lt 0 ] ; then
      echo "Values supplied are invalid."
    else
    
      # if there are real solutions for the vaules entered calculate
      # them using the quadratic formula and print them out.
      resa=$(echo "(($2*-1) + sqrt(($2*$2) - (4*$1*$3))) / (2*$1)" | bc -l)
      resb=$(echo "(($2*-1) - sqrt(($2*$2) - (4*$1*$3))) / (2*$1)" | bc -l)
      echo "Roots:"
      printf "%0.2f\n" $resb
      printf "%0.2f\n" $resa
      echo
    fi
  fi
fi

echo "See: http://www.bbc.co.uk/schools/gcsebitesize/maths/algebra/quadequationshirev3.shtml"
echo "     https://www.mathsisfun.com/quadratic-equation-solver.html"
