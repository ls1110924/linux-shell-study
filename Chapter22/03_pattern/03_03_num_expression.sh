#!/bin/zsh

input="../input.txt"

awk '
BEGIN{
    FS=","
}
{
    print $1
}
$1 == "data11" {
        print $0
}' $input

awk -F, '$1=="data11"{ print $0 }' $input