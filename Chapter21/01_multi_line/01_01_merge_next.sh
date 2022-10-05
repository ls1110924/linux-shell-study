#!/bin/zsh

input='../input.txt'

echo 'original file'
cat $input

echo
echo
sed -n '/[[:alpha:]]*/{
    N
    s/\n//g
    p
}' $input