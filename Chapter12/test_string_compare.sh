#!/bin/zsh
userName=ashuai
if [ $userName = ashuai ]; then
    echo "we $userName"
else
    echo "this is not $userName"
fi

var1=test
var2=Test
if [ $var1 \> $var2 ]; then
    echo "$var1 is greater than $var2"
else
    echo "$var1 is not greater than $var2"
fi

var3=''
if [ -n $var1 ]; then
    echo "the '$var1' is not zero length"
fi
if [ -z $var3 ]; then
    echo "the '$var3' is zero length"
fi