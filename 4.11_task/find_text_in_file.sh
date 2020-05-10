#!/bin/bash

#added function  Find
function Find {
cat $2 |  grep  $1 |  sort  -h | head -$3 | cat -n - 
}

if [ $# -eq 3 ]
 then
  Find $1 $2 $3
 else
  echo "Usage: FT \"text\" File_name Num_of_string"
fi

