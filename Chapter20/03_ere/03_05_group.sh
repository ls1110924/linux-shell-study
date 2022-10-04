#!/bin/zsh

input='../input.txt'

awk '/s(ec)?o/{print $0}' $input