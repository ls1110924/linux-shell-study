#!/bin/zsh
while [ -n "$1" ]
do
    case "$1" in
        -a) echo "found the -a option" ;;
        -b) echo "found the -b option" ;;
        -c) echo "found the -c option" ;;
        *) echo "found the unknown option, $1" ;;
    esac
    shift
done