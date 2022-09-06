#!/bin/zsh

addNum() {
    if [ $# -eq 2 ]
    then
        echo $[ $1 + $2 ]
    elif [ $# -eq 1 ]
    then
        echo $[ $1 + $1 ]
    else
        echo -1
    fi
}

result=`addNum 1 2`
echo "1 2 is $result"

result=$(addNum 2 3)
echo "2 3 is $result"

result=$(addNum 2)
echo "2 is $result"

result=$(addNum)
echo "- is $result"

result=$(addNum 2 3 4)
echo "2 3 4 is $result"