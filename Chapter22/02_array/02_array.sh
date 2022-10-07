#!/bin/zsh

input='../input.txt'

awk '
BEGIN{
    FS=","
    strArray["a"]="A"
    strArray["b"]="B"
    strArray["c"]="C"

    for(key in strArray){
        print "key=",key,"value=",strArray[key]
    }

    print
    delete strArray["c"]
    for(key in strArray){
        print "key=",key,"value=",strArray[key]
    }
}
{
    print $1
}
' $input