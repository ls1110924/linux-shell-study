#!/bin/zsh

function add {
    echo $[ $1 + $2 ]
}

minus() {
    echo $[ $1 - $2 ]
}

divide() {
    if [ $1 -eq 0 ]
    then
        echo -1
    else
        echo $[ $1 / $2 ]
    fi
}