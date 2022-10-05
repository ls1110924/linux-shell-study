#!/bin/zsh

input='../input.txt'

echo 'origin content'
cat $input

echo
echo
echo 'test little print, print all'
sed -n '/^$/{
    N
    p
}' $input

echo
echo
echo 'test big print, only print first line'
sed -n '/^$/{
    N
    P
}' $input