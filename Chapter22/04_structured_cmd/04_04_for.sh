#!/bin/zsh

input='../input_num.txt'

awk '
BEGIN{}
{
    for(i = 1; i <= NF; i++) {
        print "the index", i, "value is", $i
    }
}
' $input