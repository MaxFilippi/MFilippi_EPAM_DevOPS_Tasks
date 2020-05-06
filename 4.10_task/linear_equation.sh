#!/bin/bash

#Simple function x + 3y =  
function linear {
echo $(( $1 + 3*$2 ))
}

if [ $# -eq 2 ]
 then
  value=$(linear $1 $2)
  echo Simple function x + 3y =
  echo "The result is $value"
 else
  echo "Usage: linear_equation.sh x y"
fi
