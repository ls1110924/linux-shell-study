#!/bin/zsh
if [ -e $HOME ] && [ -d $HOME ]; then
    echo "the file exists and it is a directory"
else
    echo "the $HOME isn't exists"
fi