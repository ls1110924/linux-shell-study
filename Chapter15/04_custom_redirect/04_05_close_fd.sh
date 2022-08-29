#!/bin/zsh
exec 3>output.txt

echo "this is the first line" >&3

cat output.txt

exec 3>&-

# 关闭后再输入报错
# echo "this is the second line" >&3

exec 3>output.txt
echo "this is the second line" >&3