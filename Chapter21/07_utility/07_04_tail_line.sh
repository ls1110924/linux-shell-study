#!/bin/zsh

input='./07_01_input.txt'

sed '{
    :label
    $q
    N
    2,$D
    b label
}' $input