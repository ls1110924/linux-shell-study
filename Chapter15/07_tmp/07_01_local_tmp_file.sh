#!/bin/zsh
# 创建临时文件
tmp_file=$(mktemp tmp_file.XXXXXX)
echo "the temp file name is $tmp_file"
# 创建输出描述符
exec 3>$tmp_file
echo "this script is writing log to temp file"
echo "this is the first line" >&3
echo "this is the second line" >&3
echo "this is the third line" >&3
exec 3>&-

echo "write log done, the log content is"
cat $tmp_file

rm -f $tmp_file