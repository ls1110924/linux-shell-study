#!/bin/zsh
# 创建全局临时文件
global_tmp_file=$(mktemp -t study_shell.XXXXXX)
# 输出目录
echo "the global tmp log file location is $global_tmp_file"
# 写入
exec 3>$global_tmp_file
echo "first line" >&3
echo "second line" >> $global_tmp_file
# 输出
cat $global_tmp_file
rm -f $global_tmp_file