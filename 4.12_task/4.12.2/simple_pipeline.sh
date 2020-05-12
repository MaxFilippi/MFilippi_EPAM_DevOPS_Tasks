#!/bin/bash

Base_dir="/root/4.12_task/4.12.2"


cd $Base_dir

#create  mf_cksum.txt if it  not  exist
if [ ! -f  mf_cksum.txt ]; then
    cksum mf/* > mf_cksum.txt
fi

#Make arcive if  it  not present  
if [ ! -f  mf_actual.tgz ]; then
    tar  -z -cf mf_actual.tgz mf/
fi


#create new cksum for  compare  with old
cksum mf/* > mf_new_cksum.txt


#check SUM for find difference  
 old=`cksum  mf_cksum.txt | awk {'print $1'}`
 actual=`cksum  mf_new_cksum.txt | awk {'print $1'}`
 #if  difference is  presend - run  reconpilation
if [ $old != $actual ]
  then

 #make compilation actions
   cd  mf
   make all install clean 
 
 # create archive
   cd ..
   tar  -z -cf mf_`date +"%Y-%m-%d_%H-%M"`.tgz mf/
  
 #copy  new chsum  to actual
   cp  mf_new_cksum.txt mf_cksum.txt

fi

