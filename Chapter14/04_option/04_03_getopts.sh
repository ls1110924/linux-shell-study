#!/bin/zsh
# process option
while getopts :ab:cd opt
do
    case "$opt" in
        a) echo "find a option with index $OPTIND";;
        b) echo "find b option with index $OPTIND which value $OPTARG";;
        c) echo "find c option with index $OPTIND";;
        d) echo "find d option with index $OPTIND";;
        *) echo "find unknown option with index $OPTIND which name $opt";;
    esac
done
# process param
shift $[$OPTIND - 1]
count=1
for param in "$@"
do
    echo "the $count param is $param"
    count=$[ $count + 1 ]
done