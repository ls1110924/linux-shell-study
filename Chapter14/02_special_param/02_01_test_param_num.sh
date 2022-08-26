#!/bin/zsh
if [ $# -ne 2 ]
then
    echo
    echo usage xx.sh a b
    echo
else
    total=$[$1 + $2]
    echo
    echo the total value is $total
    echo
fi