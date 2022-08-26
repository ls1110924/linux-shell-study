#!/bin/zsh

for (( var1 = 0; var1 < 10; var1++ ))
do
    if [ $var1 -eq 5 ]
    then
        continue
    fi
    echo "the value is $var1"
done

var2=10
while [ $var2 -gt 0 ]
do
    var2=$[ $var2 - 1 ]
    if [ $var2 -eq 8 ]
    then
        continue
    fi
    echo "the while value is $var2"
done