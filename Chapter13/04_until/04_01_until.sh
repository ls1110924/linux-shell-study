#!/bin/zsh
var1=10
until [ $var1 -eq 0 ]
do
    echo "$var1"
    var1=$[$var1 - 1]
done