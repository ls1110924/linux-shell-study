#!/bin/bash

PATHS=$(echo $PATH | sed 's/:/ /g')

count=0

for path in $PATHS
do
    files=$(ls $path)
    count=0
    for file in $files
    do
        # echo "file -- $file"
        if [ -f "$path/$file" ] && [ -x "$path/$file" ]
        then
            # echo "legal -- $file"
            count=$[$count + 1]
        fi
    done
    echo "$path -- $count"
done