#!/bin/zsh
# format input parameter
set -- $(getopt ab:cd "$@")
# process option
while [ -n "$1" ]
do
    case "$1" in
        -a) echo "find -a option";;
        -b) echo "find -b option, the option value is $2"
            shift;;
        -c) echo "find -c option";;
        --) echo "find double broken line"
            shift
            break;;
        *) echo "find unknown option which is $1"
    esac
    shift
done
# process param
count=1
for param in "$@"
do
    echo "the $count param is $param"
    count=$[$count + 1]
done