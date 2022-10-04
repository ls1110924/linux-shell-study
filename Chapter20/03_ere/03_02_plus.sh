#!/bin/zsh

input='../input.txt'

awk '/on+e/{print $0}' $input