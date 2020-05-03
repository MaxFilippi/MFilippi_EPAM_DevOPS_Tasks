#!/bin/bash


echo  " $1 + $2 "  
echo  "------- =" `echo "( $1 + $2 )/ $3" | bc -l`
echo  "   $3    "
