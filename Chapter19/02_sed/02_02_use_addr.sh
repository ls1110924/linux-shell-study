#!/bin/zsh
input_file='../input.txt'

echo
echo 'raw data'
cat $input_file
echo
echo 'modify the second line'
echo
sed '2s/the/tee/g' $input_file
echo
echo 'modify the second to fourth line'
echo
sed '2,4s/the/tee/g' $input_file
echo
echo 'modify all line from second line'
echo
sed '2,$s/the/tee/g' $input_file