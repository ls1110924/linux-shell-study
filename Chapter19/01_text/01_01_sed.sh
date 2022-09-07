#!/bin/zsh

input_file='../input.txt'

cat $input_file
echo
echo 'test one command'
echo
sed 's/line/text/' $input_file
echo
echo 'test multi s command'
echo
sed -e 's/line/text/; s/the/tee/' $input_file
echo
sed -e 's/line/text/
s/the/tee/' $input_file
echo
echo 'test file command'
echo
script_file='script.sed'
sed -f $script_file $input_file
