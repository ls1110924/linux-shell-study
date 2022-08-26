#!/bin/zsh
file=state\.txt
old_ifs=$IFS
IFS=$'\n'
for state in $(cat $file); do
    echo "visit beautiful $state"
done
IFS=$old_ifs