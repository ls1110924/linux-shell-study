#!/bin/zsh
while [ -n "$1" ]
do
    case "$1" in
        -a) echo "find -a option";;
        -b) echo "find -b option and it's value is $2"
            shift;;
        --) echo "find double broken line"
            shift
            break;;
        *) echo "find unknow option, $1"
    esac
    shift
done