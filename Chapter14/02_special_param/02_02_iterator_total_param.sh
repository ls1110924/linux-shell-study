#!/bin/zsh

# 遍历参数 $*
echo
count=1
for param in "$*"
do
    echo "\$*'s $count parameter = $param"
    count=$[$count + 1]
done

# 遍历参数 $*
echo
count=1
for param in "$@"
do
    echo "\$@'s $count parameter = $param"
    count=$[$count + 1]
done