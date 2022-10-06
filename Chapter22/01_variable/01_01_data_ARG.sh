#!/bin/zsh

input='../input.txt'

awk -F, '
BEGIN{
    print "the argument num is",ARGC
    for(i = 0; i < ARGC; i++) {
        print "the",i,"argument is",ARGV[i]
    }
    print "the file index"
}
{
    print $1
}' $input