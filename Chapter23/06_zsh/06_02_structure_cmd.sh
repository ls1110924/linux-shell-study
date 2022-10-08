#!/bin/zsh

count=5
repeat $count
do
    echo "count $count"
    count=$(( $count - 1 ))
done