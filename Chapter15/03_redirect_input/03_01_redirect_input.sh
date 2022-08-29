#!/bin/zsh
# test redirect input
exec 0< input.txt

count=1
while read line
do
    echo "the $count line is $line"
    count=$[ $count + 1 ]
done