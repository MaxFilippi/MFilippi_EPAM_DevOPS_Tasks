#!/bin/bash

#set  lenght of  generated  passwords
Pass_Lenght=8

#function  for  password generation
PassGen(){
tr -dc '!"A-Za-z0-9#$%&+,-.;<=>?@^_`~' <  /dev/urandom | head -c $Pass_Lenght
}

#read Usernames from file
while  read Line

do

 #Generate pass 
 Pswd=`PassGen`
 #create file  with user/pass info
 echo $Line" - "$Pswd > $Line-login-password.txt 
 #create user
 useradd -s /bin/bash -d /home/$Line -m $Line 
 #Set  the password without stdout 
 echo -e "$Pswd\n$Pswd\n" |  passwd $Line > /dev/null

done < $1

