#!/bin/zsh

input_file='../input.txt'

echo 'raw data'
echo
cat $input_file
echo
echo 'insert a new line before first line'
echo
sed '2i\
this a new line which used insert to the front of second line
' $input_file
echo
echo 'append a new line after first line'
echo
sed '2a\
this a new line which used append to the back of second line' $input_file
echo
echo 'append three line to the tail of file'
echo
sed '$a\
one\
two\
three' $input_file