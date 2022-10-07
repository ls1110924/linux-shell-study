#!/bin/zsh

input='../input_num.txt'

awk '{
    if($1 > 20) {
        print $1,$1*2
    } else {
        print $1
    }
}' $input