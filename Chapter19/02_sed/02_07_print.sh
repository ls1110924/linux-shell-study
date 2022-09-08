#!/bin/zsh

input_file='../input.txt'

echo 'raw data'
echo
cat $input_file
echo
echo 'print all line'
echo
sed -n 'p' $input_file
echo
echo 'print second to four line'
echo
sed -n '2,4p' $input_file
echo
echo 'print reg match line'
echo
sed -n '/^.*first.*$/p' $input_file
echo
echo 'print and replace second line'
echo
sed -n '/second/{
  p
  s/second/text/p
}' $input_file
sed -n '2{
  p
  s/second/text/p
}' $input_file