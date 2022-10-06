#!/bin/zsh

input='./07_02_input.txt'

sed '=' $input | sed '{
    N
    s/\n/ /
    }'