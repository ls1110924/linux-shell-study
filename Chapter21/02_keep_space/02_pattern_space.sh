#!/bin/zsh

input='../input.txt'

echo "origin content"
cat $input

echo
echo
sed '/one/{
    p
    h
    p
    n
    p
    n
    p
    g
    p
}' $input

echo
echo
sed '/one/{
    h
    n
    n
    g
}' $input