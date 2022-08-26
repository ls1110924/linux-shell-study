#!/bin/zsh
file=state\.txt
for state in $(cat $file); do
    echo "visit beautiful $state"
done