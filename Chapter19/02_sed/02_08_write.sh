#!/bin/zsh

input_file='../input.txt'

echo 'raw data'
echo
cat $input_file
echo
echo 'write some line in line range'
echo
sed -n '3,4w 02_08_write1.txt' $input_file
echo
echo 'write some line match reg'
echo
sed -n '/first/w 02_08_write2.txt' $input_file
