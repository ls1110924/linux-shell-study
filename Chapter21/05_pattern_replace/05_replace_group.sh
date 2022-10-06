#!/bin/zsh

input='./input.txt'

sed 's/which has \(.*\) key word/\1/' $input
echo
sed 's/\([[:alpha:]]*\) key word/\1/' $input