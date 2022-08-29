#!/bin/zsh
# 创建输入输出描述符
exec 3<> inout.txt
# 测试输入输出
read line <&3
echo "read from $line"
echo "this is a test line" >&3