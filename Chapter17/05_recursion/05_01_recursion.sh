#!/bin/zsh

factorial() {
    if [ $# -eq 1 ]
    then
        if [ $1 -eq 1 ]
        then
            echo 1
        else
            local fact=`factorial $[ $1 - 1 ]`
            echo $[ $1 * $fact ]
        fi
    else
        echo -1
    fi
}

result=`factorial 3`
echo "factorial result is $result"