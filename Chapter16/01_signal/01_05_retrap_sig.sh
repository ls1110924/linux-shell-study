#!/bin/zsh

trap "echo 'sry, I have trapped ctrl+c'" SIGINT

count=1
while [ $count -lt 5 ]
do
    echo "first loop $count"
    sleep 1
    count=$[ $count + 1 ]
done

trap "echo 'I hava retrapped ctrl+c'" SIGINT

count=1
while [ $count -lt 5 ]
do
    echo "second loop $count"
    sleep 1
    count=$[ $count + 1 ]
done

echo "end of script"