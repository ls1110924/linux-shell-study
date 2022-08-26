#!/bin/zsh
for (( i = 0; i < 10; i++ ))
do
    echo "start outside loop, $i"
    for (( j = 0; j < 5; j++ ))
    do
        echo "   inside loop, $j"
    done
done