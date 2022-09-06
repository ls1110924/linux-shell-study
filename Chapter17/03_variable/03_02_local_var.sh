#!/bin/zsh

func1() {
    local result=$[ $1 * $1 * $1 ]
    echo $result
}

result=2
echo "init outside result is $result"
# func1_result=$(func1 $result)
func1_result=(`func1 $result`)
echo "after funtion invoke, the result is $result"
echo "function result is $func1_result"