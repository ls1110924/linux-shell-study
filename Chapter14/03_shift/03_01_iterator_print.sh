#!/bin/zsh
count=1
while [ -n "$1" ]
do
    echo "the $count parameter is $1"
    count=$[$count + 1]
    shift
done