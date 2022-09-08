#!/bin/zsh

input_file='../input.txt'

echo 'raw data'
echo
cat $input_file
echo
echo 'print all line with line num'
echo
sed '=' $input_file
echo
echo 'find the line num about first'
echo
sed -n '/first/{
    =
    p
}' $input_file