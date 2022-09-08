#!/bin/zsh

input_file='../input.txt'

echo 'raw data'
echo
cat $input_file
echo
echo 'replace a new line to second line'
echo
sed '2c\
this is a new second line\
' $input_file
echo
echo 'replace a new line to first line'
echo
sed '/^.*first line.*$/c\
this is a new first line\
' $input_file
echo
echo 'replace a new line to multi line'
echo
sed '2,3c\
this is a new line\
' $input_file