#!/bin/zsh
var1=10
while [ $var1 -gt 0 ]
do
    echo "outside loop, $var1"
    for (( var2 = 0; var2 < 5; var2++ ))
    do
        echo "   inside loop, $var2"
    done
    var1=$[ $var1 - 1 ]
done