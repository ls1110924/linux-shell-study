#!/bin/zsh
# creat new output fd
exec 3>output.txt
# start output
echo "this is the first line"
echo "this is the second line" >&3
echo "this is the third line"