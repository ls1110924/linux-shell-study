#!/bin/zsh

input='../input_num.txt'

awk '
{
    count=0
    i=1
    while(i <= NF) {
        count += $i
        i += 1
        if (i == 4) {
            break
        }
    }
    print "total is",count,"the average is",count/NF
}
' $input