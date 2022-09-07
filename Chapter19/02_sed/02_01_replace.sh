#!/bin/zsh
input_file='../input.txt'

echo 'normal replace'
echo
sed 's/line/xxx/' $input_file
echo
echo 'replace all'
echo
sed 's/line/xxx/g' $input_file
echo
echo 'replace the second match'
echo
sed 's/line/xxx/2' $input_file
echo
echo 'only print match line'
echo
sed -n 's/1/111/p' $input_file
echo
echo 'only write match line to file'
echo
sed -n 's/1/111/w replace_result.txt' $input_file