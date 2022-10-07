#!/bin/zsh

input='../input.txt'

awk '
BEGIN {
    time=systime()
    print "time is", time
    timestr=strftime("%A, %B %d, %Y", 12414124214)
    print "date is", timestr
}
{
    print $1
}
' $input