#!/bin/bash

echo "Quadratic equation solution calculator"
echo "  ax^2 + bx + c = 0"
echo

if [ "$1" == "-h" ] ; then
  display_help
else

  if [ "$#" -lt 3 ] ; then
    echo "You must to supply 3 values."
    display_help
  else

    echo "Values supplied:"

    echo "a = $1"
    echo "b = $2"
    echo "c = $3"
    echo

    checkit=$(echo "$2*$2 - 4*$1*$3" | bc -l)

    if [ $checkit -lt 0 ] ; then
      echo "Values supplied are invalid."
    else

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

display_help() {
    echo -e "Usage: . quadratic_sol.sh [arguments]" >&2
    echo
    echo "  You must supply 3 arguments for a,b and c"
    echo "  of the quadratic equation."
    echo
}

