#!/bin/dash

value1=10
value2=20
# value3=expr "$value1 + $value2"
value3=$(($value1 + $value2))
echo $value3