#!/bin/zsh

for var in 1 2 3 4 5 6
do
    echo "the value is $var"
    if [ $var -eq 5 ]
    then
        break
    fi
done

var1=1
while [ $var1 -lt 6 ]
do
    echo "the while value is $var1"
    if [ $var1 -gt 4 ]
    then
        break
    fi
    var1=$[ $var1 + 1 ]
done