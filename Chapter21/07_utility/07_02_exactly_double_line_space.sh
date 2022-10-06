#!/bin/zsh

input='./07_02_input.txt'

sed '{
    /^$/d
    $!G
}' $input