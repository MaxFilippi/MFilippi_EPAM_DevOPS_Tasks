#!/bin/bash

 echo Basic PATH info:
 echo $PATH
 echo

 echo "#1 reverse |  first  string via cut |  reverse :"
 echo $PATH |  rev |  cut -d: -f1 |  rev
 echo

 echo "#2 via  AWK -  classic :"
 echo $PATH |  awk -F : '{print $NF}'
 echo

 echo "#3 via working with  variable -  shortest :"
 echo ${PATH##*:}
 echo

 echo  "#4 via  grep"
 echo $PATH |  grep -oE "[^:]+$"
 echo


