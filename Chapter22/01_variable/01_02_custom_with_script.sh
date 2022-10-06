#!/bin/zsh

input='../input.txt'

awk '
BEGIN{
    name="AShuai"
    print "hello your name is",name
    first=2
    second=3
    print "first is",first,"second is",second,"and their sum is",first+second
}
{
    print $1
}
' $input