#!/bin/bash

if [ $# == 2 ]

 then 

  echo $1 $2 |  awk '{if ($1 >= $2) print $1; else print $2}'

 else 

  echo  Input 2 digitis only with spase delimeter

fi




