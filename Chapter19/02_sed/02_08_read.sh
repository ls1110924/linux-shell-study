#!/bin/zsh

input_file='../input.txt'
read_file='read_example.txt'

echo 'raw data'
echo
cat $input_file
echo
echo 'read to back of first line'
echo
sed "1r $read_file" $input_file
echo
echo 'read to back of reg match line'
echo
sed "/third/r $read_file" $input_file
echo
echo 'read to back of last line'
echo
sed "\$r $read_file" $input_file
echo
echo 'read to the back of second line and delete second line'
echo
sed "2{
    r $read_file
    d
    }" $input_file