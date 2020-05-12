#!/bin/bash

#Mem Part
echo --------------- >> ~/memory/stat
date +"%D %T" >> ~/memory/stat 
echo current Mem  Status: >> ~/memory/stat
free -h | grep -i '^Mem' >> ~/memory/stat
echo --------------- >> ~/memory/stat
echo >> ~/memory/stat


## Sys stat part

#vmstat
echo --------------- >> ~/memory/sys_stat
echo current vmstat info: >> ~/memory/sys_stat
vmstat -t 3 10 >> ~/memory/sys_stat
echo --------------- >> ~/memory/sys_stat
echo >> ~/memory/sys_stat

#load avarage
echo --------------- >> ~/memory/sys_stat
date +"%D %T" >> ~/memory/sys_stat
echo current 15m Load avarage : `uptime | awk -F "," {'print $5'}` >> ~/memory/sys_stat
echo --------------- >> ~/memory/sys_stat
echo >> ~/memory/sys_stat

#Pages
echo --------------- >> ~/memory/sys_stat
date +"%D %T" >> ~/memory/sys_stat
echo current Swap pages info : >> ~/memory/sys_stat 
swapon -s >> ~/memory/sys_stat
echo --------------- >> ~/memory/sys_stat
echo >> ~/memory/sys_stat

#Disks

echo --------------- >> ~/memory/sys_stat
date +"%D %T" >> ~/memory/sys_stat
echo current disk partition info : >> ~/memory/sys_stat
df -h >> ~/memory/sys_stat
echo --------------- >> ~/memory/sys_stat
echo >> ~/memory/sys_stat

