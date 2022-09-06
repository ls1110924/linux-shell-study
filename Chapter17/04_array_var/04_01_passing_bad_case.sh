#!/bin/bash

testArray() {
    echo "the function parameter is $@"
    local_array=$1
    echo "received array is ${local_array[*]}" 
}

array=(1 2 3 4 5)
echo "init array is ${array[*]}"
testArray $array