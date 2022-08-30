#!/bin/zsh

count=1
while [ $count -le 5 ]
do
    echo "Loop $count"
    count=$[ $count + 1 ]
    sleep 1
done