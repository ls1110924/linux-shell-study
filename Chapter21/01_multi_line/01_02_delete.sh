#!/bin/zsh

input='../input.txt'

echo 'origin content'
cat $input

echo
echo
echo 'test little delete'
sed '/^$/{
    N
    d
}' $input

echo
echo
echo 'test big delete'
sed '/^$/{
    N
    D
}' $input