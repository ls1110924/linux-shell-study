#!/bin/zsh

factorial=1
counter=1
number=$1

while [ $counter -le $number ]
do
    factorial=$[ $factorial * $counter ]
    counter=$[ $counter + 1 ]
done

echo $factorial