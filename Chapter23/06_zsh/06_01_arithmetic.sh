#!/bin/zsh

value1=10
value2=3.0
let result1=" $value1 / $value2 "
printf "%6.3f\n" $result1
echo "result1=$result1"
echo
result2=$(( $value1 / $value2 ))
echo "result2=$result2"
echo
((result3 = $value1 / $value2 ))
echo "result3=$result3"