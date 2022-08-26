#!/bin/zsh
variable=""
if test $variable
then
    echo "the condition is true"
else
    echo "the condition is false"
fi

if [ $variable ]
then
    echo "the condition is true"
else
    echo "the condition is false"
fi