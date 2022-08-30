#!/bin/zsh

trap "echo 'exit, goodbye'" EXIT

count=1
while [ $count -le 5 ]
do
    echo "Loop $count"
    sleep 1
    count=$[ $count + 1 ]
done