#!/bin/zsh

input_file='../input.txt'

echo 'raw data'
echo
cat $input_file
echo
echo 'transform char'
echo
sed 'y/ist/xyz/' $input_file