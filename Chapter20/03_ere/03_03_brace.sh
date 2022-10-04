#!/bin/zsh

input='../input.txt'

awk --re-interval '/on{2}e/{print $0}' $input
echo
awk --re-interval '/on{0,2}e/{print $0}' $input