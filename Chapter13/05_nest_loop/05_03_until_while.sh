#!/bin/zsh
var1=0
until [ $var1 -eq 5 ]
do
    echo "outside loop $var1"
    var2=$[$var1]
    while [ $var2 -lt 4 ]
    do
        echo "  inside loop $var2"
        var2=$[$var2 + 1]
    done
    var1=$[ $var1 + 1 ]
done