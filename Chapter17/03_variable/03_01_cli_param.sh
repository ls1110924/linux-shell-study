#!/bin/zsh

function add {
    if [ $# -eq 2 ]
    then
        echo $[ $1 + $2 ]
    else
        echo -1
    fi
}

if [ $# -eq 3 ]
then
    result=`add $1 $2`
    echo "result is $result"
fi
