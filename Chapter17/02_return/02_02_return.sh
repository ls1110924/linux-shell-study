#!/bin/bash

func1() {
    read -p "enter a num: " value
    value=$[ $value * 2 ]
    # only return number and 0 <= x <= 255
    return $value
}

func1
echo "the func1's result is $?"