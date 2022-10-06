#!/bin/zsh

input='./07_01_input.txt'

echo 'origin content'
cat $input

echo
echo
echo 'double line space'
sed '$!G' $input