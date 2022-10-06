#!/bin/zsh

input='../input.txt'

awk '
BEGIN{
    FS=","
    print "the PATH env is",ENVIRON["PATH"]
    print "the HOME env is",ENVIRON["HOME"]
}
{
    print $1
}
' $input