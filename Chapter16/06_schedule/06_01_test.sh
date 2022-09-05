#!/bin/zsh

exec 3>"output.txt"

echo "start run script, $$" >&3


count=1
while [ $count -le 5 ]
do
    echo "Loop $count" >&3
    count=$[ $count + 1 ]
    sleep 1
done

echo "end of script" >&3