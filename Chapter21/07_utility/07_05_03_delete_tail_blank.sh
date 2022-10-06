#!/bin/zsh

input='./07_05_03_input.txt'

sed '{
    :start
    /^\n*$/{
        $d
        N
        b start
    }
}' $input