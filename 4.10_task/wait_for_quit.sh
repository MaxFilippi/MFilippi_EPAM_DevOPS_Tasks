#!/bin/bash

#set variable a
a=1

until [ $a == "quit" ]
 do
  echo "Input something (\"quit\" for exit):"
  read a
 done
