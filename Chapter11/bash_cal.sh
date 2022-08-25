#!/bin/zsh
var1=$(echo "scale=4;3.44 / 5" | bc)
echo "the result is $var1"
var1=10
var2=20
var3=$(echo "$var1 + $var2 "| bc)
echo "the first step result is $var3"
var4=$(echo "scale=4;$var1 / $var3" | bc)
echo "the second step result is $var4"
var5=$(bc << EOF
scale=4
a1=($var1 + $var2)
b1=($var1 * $var2)
a1 + b1
EOF
)
echo "the final result is $var5"