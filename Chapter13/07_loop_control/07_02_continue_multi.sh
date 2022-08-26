#!/bin/zsh

var1=-1
while [ $var1 -lt 10 ]
do
    echo "outside $var1"
    var1=$[ $var1 + 1 ]
    var2=9
    until [ $var2 -eq 2 ]
    do
        var2=$[ $var2 - 1 ]
        echo "  inside $var2"
        if [ $var2 -eq 5 ]
        then
            continue 2
        fi

    done
done