#!/bin/bash

testArray() {
    local array=(`echo $@`)
    echo "receive array is ${array[*]}"
    echo "test   ${array[0]}"
    for ((i = 0; i < $#; i++))
    do
        array[$i]=$[ ${array[$i]} * 2 ]
    done
    echo "after calcate, the array is ${array[*]}"
}

array=(1 2 3 4 5)
echo "init array is ${array[*]}"
testArray ${array[*]}