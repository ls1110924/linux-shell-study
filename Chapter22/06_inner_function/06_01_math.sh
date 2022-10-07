#!/bin/zsh

input='../input.txt'

awk -F, '
BEGIN{
    print "test int function"
    testInt=5.2
    print testInt, "int value is", int(testInt)
    testInt=5.9
    print testInt, "int value is", int(testInt)
    testInt=-5.2
    print testInt, "int value is", int(testInt)
    testInt=-5.9
    print testInt, "int value is", int(testInt)
    print
    print "test rand function"
    randInt=int(rand() * 100)
    print "rand int value is", randInt
    randFloat=rand()*100
    print "rand float value is", randFloat
}
{
    print $1
}
' $input