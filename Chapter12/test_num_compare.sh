#!/bin/zsh
var1=10
var2=20
if [[ var1 -eq 5 ]]; then
    echo "var1 equals 5"
else
    echo "var1 not equals 5"
fi

if [ $var1 -ne 5 ]; then
    echo "var1 not equals 5"
else
    echo "var1 equals 5"
fi
