#!/bin/zsh
var1=10
while echo "$var1"
      [ $var1 -ge 0 ]
do
    echo "this is inside of the loop, $var1"
    var1=$[ $var1 - 1 ]
done