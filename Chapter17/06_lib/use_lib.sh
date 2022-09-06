#!/bin/zsh

. ./lib.sh

result=`add 1 2`
echo "add result is $result"
result=$(minus 2 1)
echo "minus result is $result"
result=$(divide 6 2)
echo "divide result is $result"