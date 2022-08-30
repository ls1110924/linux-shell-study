#!/bin/zsh

# trap "echo 'sry, I hava trapped ctrl+c'" SIGINT
trap "echo 'sry, I hava trapped ctrl+c'" 2

count=1
while [ $count -le 7 ]
do
    echo "Loop $count"
    sleep 1
    count=$[ $count + 1 ]
done

echo "end of script"