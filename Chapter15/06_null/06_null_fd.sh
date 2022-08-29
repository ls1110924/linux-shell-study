#!/bin/zsh

echo "this is the first line"

exec 3>/dev/null

echo "this is the second line" >&3