#!/bin/zsh

function fun1 {
    echo "fun1"
}

fun2() {
    echo "fun2"
}

count=1
while [ $count -le 5 ]
do
    fun1
    sleep 1
    fun2
    count=$[ $count + 1 ]
done
