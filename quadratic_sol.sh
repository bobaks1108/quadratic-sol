#!/bin/bash
# Bash script to calculate the solutions to a Quadratic Equation
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
}

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
  display_help
else

  # Check if the user entered less than 3 arguments, if so ask for them to be entered.
  if [ "$#" -lt 3 ] ; then

    echo "You must to supply 3 values, please:"
    echo "enter a value for a:"
    read a
    echo "enter a value for b:"
    read b
    echo "enter a value for b:"
    read c

  else

    a=$1
    b=$2
    c=$3

  fi

  re='^[+-]?[0-9]+([.][0-9]+)?$'
  if ! [[ $a =~ $re ]]  ; then
    echo "error:  a is not a number." >&2; exit 1
  fi

  if ! [[ $b =~ $re ]]  ; then
    echo "error:  b is not a number." >&2; exit 1
  fi

  if ! [[ $c =~ $re ]]  ; then
    echo "error:  c is not a number." >&2; exit 1
  fi
    
  if [[ $a=0 ]]; then
    echo "error: a cannot be 0" >&2; exit 1
  fi

  echo "Values supplied:"

  echo "a = $a"
  echo "b = $b"
  echo "c = $c"
  echo

  # Firstly check if the values entered are valid i.e.
  # check if quadratic equation has real solutions, which can be checked
  # by calculating the equation's discriminant.
  # If this is negative then this will mean the formuala does not
  # have any real solutions because it has to calculate the 
  # square root of a negative number.
    
  checkit=$(echo "$b*$b - 4*$a*$c" | bc -l)
  if [ $checkit -lt 0 ] ; then
    echo "Values supplied are invalid."
  else
    
    # if there are real solutions for the vaules entered calculate
    # them using the quadratic formula and print them out.
    resa=$(echo "(($b*-1) + sqrt(($b*$b) - (4*$a*$c))) / (2*$a)" | bc -l)
    resb=$(echo "(($b*-1) - sqrt(($b*$b) - (4*$a*$c))) / (2*$a)" | bc -l)
    echo "Roots:"
    printf "%0.2f\n" $resb
    printf "%0.2f\n" $resa
    echo
  fi
fi


echo "See: http://www.bbc.co.uk/schools/gcsebitesize/maths/algebra/quadequationshirev3.shtml"
echo "     https://www.mathsisfun.com/quadratic-equation-solver.html"
