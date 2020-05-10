#!/bin/bash

echo "Number of processes for user:"
whoami
ps -aux | grep  -c ^$USER
echo "Number of processes for user  root:"
ps -aux | grep  -c ^root
