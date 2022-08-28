#!/bin/zsh
# check option
while [ -n "$1" ]
do
    case "$1" in
        -a) echo "found -a option";;
        -b) echo "found -b option";;
        -c) echo "found -c option";;
        --) echo "found double broken line"
            shift
            break;;
        -*) echo "found unknow option, $1";;
    esac
    shift
done
# check parameter
count=1
while [ -n "$1" ]
do
    echo "the $count param is $1"
    shift
    count=$[ $count + 1 ]
done