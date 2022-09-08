#!/bin/zsh
input_file='../input.txt'

echo
echo 'raw data'
cat $input_file
echo
echo 'modify the line which contain third'
echo
sed '/.*third.*/s/the/tee/g' $input_file