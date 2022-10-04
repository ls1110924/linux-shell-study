#!/bin/zsh

input='../input.txt'

sed -n '/test[[:digit:]]/p' $input