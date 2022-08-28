#!/bin/bash
echo "start read file"
count=1
cat file.txt | while read line
do
    echo "the $count line : $line"
    count=$[$count + 1]
done
echo "read file finish"