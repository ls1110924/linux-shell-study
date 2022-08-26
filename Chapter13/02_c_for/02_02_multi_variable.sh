#!/bin/zsh
for (( i = 0, j = 20; i < 10 && j > 15; i++, j--  ))
do
    echo "$i -- $j"
done
echo "the last $i -- $j"