#!/bin/bash
old_ifs=$IFS
IFS=:
for dir in $PATH
do
    echo "$dir"
    for file in $dir/*
    do
        if [ -e $file ] && [ -f $file ] && [ -x $file ]
        then
            echo "  $file"
        fi
    done
done