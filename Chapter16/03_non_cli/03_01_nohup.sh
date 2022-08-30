#!/bin/zsh

echo "start run script"

count=1
while [ $count -lt 5 ]
do
    echo "Loop $count"
    count=$[ $count + 1 ]
    sleep 1
done

echo "end of script"