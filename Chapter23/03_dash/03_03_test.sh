#!/bin/dash

value1=abcdef
value2=abcdef

if [ $value1 = $value2 ]
then
    echo "it's same"
else
    echo "it's different"
fi