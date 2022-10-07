#!/bin/zsh

input='../input.txt'

awk '
BEGIN{
    FS=","
}
/[a-z]+2[0-9]+/{
    print $0
}
' $input