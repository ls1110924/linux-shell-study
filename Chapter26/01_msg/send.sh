#!/bin/bash

# 检测参数
if [ $# -le 1 ]
then
    echo "the parameter num is illegal, plz check"
    exit
fi

# 读取参数
DEST_USER=$1
MSG="$2"
shift
while [ -n "$2" ]
do
    MSG="$MSG $2"
    shift
done
echo "MSG-->$MSG"

# 获取当前用户和终端类型
CUR_USER=$(who -m | awk '{ print $1 }')
CUR_TYPE=$(who -m | awk '{ print $2 }')
echo "$CUR_USER-->$CUR_TYPE"

# 查找第一参数指定的待发送消息的目标用户(若同一用户不同终端之间通信，则需要特殊处理)
DEST_TYPES=$(who | awk -v destUser=$DEST_USER -v curUser=$CUR_USER -v curType=$CUR_TYPE '
$1 == destUser {
    if(match($2, "^tty.*$") > 0) {
        if ($1 == curUser && $2 != curType) {
            print $2
        }
    }
}
')

if [ -z "$DEST_TYPES" ]
then
    echo "there is no body to send msg"
    exit
fi

#  找到目标用户
for DEST_TYPE in $DEST_TYPES
do
    echo "find dest user terminal --> $DEST_TYPE"
    echo "$MSG" | write $DEST_USER $DEST_TYPE
done
