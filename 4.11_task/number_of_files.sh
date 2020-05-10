#!/bin/bash

echo Homedir ~ of user:
 whoami
echo  "consist of"
echo  "regular files:"
 find ~ -type f -not -iname ".*" |  wc -l
echo  "hidden files:"
 find ~ -type f -iname ".*" |  wc -l
