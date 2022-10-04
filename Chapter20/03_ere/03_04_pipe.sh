#!/bin/zsh

input='../input.txt'

awk '/(r|e)st/{print $0}' $input