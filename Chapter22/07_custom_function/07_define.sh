#!/bin/zsh

input='../input.txt'

awk '
function square(x) {
    return x * x
}
BEGIN{
    test=10
    result=square(test)
    print test,"square value is", result
}
{
    print $1
}
' $input