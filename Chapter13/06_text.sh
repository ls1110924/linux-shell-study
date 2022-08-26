#!/bin/bash

old_ifs=$IFS
IFS=$'\n'
for line in $(cat /etc/passwd)
do
    echo "values in $line -"
    IFS=:
    for word in $line
    do
        echo "   $word"
    done
done
IFS=$old_ifs