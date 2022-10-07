#!/bin/zsh

input='../input_num.txt'

awk '
BEGIN{}
{
    count=0
    i=1
    do {
        if(i > NF) {
            break
        }
        count+=$i
        i++
        } while(i <= NF)
    print "the total is", count, "the remainder is", count%10
}
' $input