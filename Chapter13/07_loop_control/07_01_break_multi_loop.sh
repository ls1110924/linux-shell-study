#!/bin/zsh

for (( var1 = 1; var1 < 5; var1++ ))
do
    echo "outside value $var1"
    for (( var2 = 0; var2 < 4; var2++ ))
    do
        echo "  inside value $var2"
        if [ $var1 = 3 ]
        then
            break 2
        fi
    done
done