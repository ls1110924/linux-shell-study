#!/bin/zsh

input_file='../input.txt'

echo 'raw data'
echo
cat $input_file
echo
echo 'replace two words which are the and line on second line'
echo
sed '2{
  s/the/tee/
  s/line/liny/g
}' $input_file
echo
echo 'replace two words which are the and line after second line'
echo
sed '2,${
  s/the/tee/
  s/line/liny/g
}' $input_file