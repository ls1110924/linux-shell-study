#!/bin/zsh
factorial=1
for (( number = 1; number <= $1; number++ ))
do
    factorial=$[$factorial*$number]
done
echo the factorial result is $factorial