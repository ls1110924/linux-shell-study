#!/bin/bash

function test {
    local in_arr=(`echo $@`)
    local out_arr=($(echo "$@"))
    # echo "the input array is ${in_arr[*]}"
    # echo "the output array is ${out_arr[*]}"
    for ((i = 0; i < $#; i++))
    do
        out_arr[$i]=$[ ${in_arr[$i]} * 2 ]
        # echo "test  ${in_arr[$i]}"
    done
    echo ${out_arr[*]}
}

array=(1 2 3 4)
echo "the init array is ${array[*]}"
# test ${array[*]}

result_arr=(`test ${array[*]}`)
echo "test ${result_arr[0]}"
echo "the result array is ${result_arr[*]}"