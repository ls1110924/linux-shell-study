#!/bin/bash

# generate date
YEAR_MONTH=$(date +%Y%0m)
DAY=$(date +%d)
TIME=$(date +%0k%M)

# 备份压缩文件名
ARCHIVER_FILE_NAME="$TIME.taz"
DESTINATION="backup/$YEAR_MONTH/$DAY"

# 待压缩文件的配置目录
CONFIG_FILES="/Users/ashuai/WorkSpace/Shell/Chapter24/01_archiving/backup_file_list.txt"

# 待压缩的文件结合
ARCHIVER_FILES=""

# 扫描出有效的待归档文件
COUNT=1
exec < $CONFIG_FILES
read CONFIG_FILE
while [ $? -eq 0 ]
do
    if [ -z $CONFIG_FILE ]
    then
        echo "the $COUNT config file is empty, plz check"
    elif [ -f $CONFIG_FILE ] || [ -d $CONFIG_FILE ]
    then
        ARCHIVER_FILES="$ARCHIVER_FILES $CONFIG_FILE"
    else
        echo "the $COUNT config file don't exist, the path is $CONFIG_FILE"
    fi
    COUNT=$[ $COUNT + 1 ]
    read CONFIG_FILE
done

# 创建归档目录
echo "## Create ##->$DESTINATION"
mkdir -p $DESTINATION
echo "## Create Complete ##"

echo
echo "start archive"
echo "the arcive files is $ARCHIVER_FILES"
echo
DESTINATION_FILE="$DESTINATION/$ARCHIVER_FILE_NAME"
tar -czf $DESTINATION_FILE $ARCHIVER_FILES 2>/dev/null

echo "archive complete"
echo "the archive file is $DESTINATION_FILE"
echo
exit