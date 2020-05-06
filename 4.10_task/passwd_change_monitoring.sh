#!/bin/bash

#cp  passwd file for  compare
cat /etc/passwd > /tmp/old.passwd

while :
 do
 #check SUM for find difference  
 old=`cksum /tmp/old.passwd | awk {'print $1'}`
 actual=`cksum /etc/passwd | awk {'print $1'}`
 #if  difference is  presend -  add to  file
 if [ $old != $actual ]
  then
   date >> /tmp/pwd.changes
   echo "----" >> /tmp/pwd.changes
   diff  /tmp/old.passwd /etc/passwd |  grep ":"| awk -F: {'print  $1 " " $3 '} >> /tmp/pwd.changes 
   echo "----" >> /tmp/pwd.changes
   #update old pwd file for  next  checking
   cat /etc/passwd > /tmp/old.passwd
 fi
 
 #wait 1 min
 sleep 60
done
