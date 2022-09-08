#!/bin/zsh

input_file='../input.txt'

echo 'raw data'
echo
cat $input_file
echo
echo 'list all line'
echo
sed -n 'l' $input_file
echo
echo 'list the second line'
echo
sed -n '2l' $input_file