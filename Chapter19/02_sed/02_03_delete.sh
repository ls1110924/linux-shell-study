#!/bin/zsh

input_file='../input.txt'

echo 'raw data'
echo
cat $input_file
echo
echo 'delete all line'
echo
sed 'd' $input_file
echo
echo 'delete the first line'
echo
sed '1d' $input_file
echo
echo 'delete the line witch after fourth line'
echo
sed '4,$d' $input_file
echo
echo 'delete line which match the pattern'
echo
sed '/^.*first.*$/d' $input_file
echo
echo 'delete line which between the patterns'
echo
sed '/^.*first.*$/,/^.*third.*$/d' $input_file
