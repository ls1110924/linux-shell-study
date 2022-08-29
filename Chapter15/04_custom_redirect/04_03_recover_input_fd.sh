#!/bin/bash
# 保存原标准输入
exec 3<&0
# 创建新的标准输入
exec 0<input.txt

# 开始读取输入
count=1
while read line
do
    echo "the $count line is $line"
    count=$[ $count + 1 ]
done

# 还原原始标准输入
exec 0<&3
read -t 5 -p "enter your answer[Y/N]:" answer
case $answer in
    y|Y) echo "goodbye";;
    n|N) echo "sorry";;
    *) echo "wtf";;
esac