#!/bin/bash

func1() {
    read -p "enter a num " value
    echo $[ $value * 2 ]
}

# func1

result=`func1`
echo "the func1's result is $result"