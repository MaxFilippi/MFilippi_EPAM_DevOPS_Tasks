#!/bin/bash

#create folder if it  not  exist
if [ ! -d ~/tmp ]; then
    mkdir ~/tmp
fi
#clear previous log
cat  /dev/null > ~/tmp/process_info.txt

#calculate user process number with header
prn=`ps -U $USER | wc -l`
#remove ps header from  result
prn=$((prn-1))

while :
 do
  echo "Number of process for user: $USER at "`date +"%T %D"` "is" $prn  >> ~/tmp/process_info.txt
  sleep 60
 done
