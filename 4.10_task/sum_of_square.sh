#!/bin/bash

n=1
result=0

echo -n SUM of " " 
for i  in  $*
 do
  echo -n $i\^2 " "   
  n=$((n+1))
  result=`echo "$result + $i^2" | bc` 
 done

echo  -n  = $result

echo
