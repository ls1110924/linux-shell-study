#!/bin/zsh

echo "this is the first line to screen"

# 保存原标准输出
exec 3>&1
# 设置新的标准输出
exec 1>output.txt

echo "this is the secone line to file"

# 恢复原标准输出
exec 1>&3

echo "this is the third line to screen"
