#!/bin/zsh
jump_dir=/Users/$USER
if [ -d $jump_dir ]; then
    echo "The $jump_dir directory exists"
    cd $jump_dir
    pwd
    ls
else
    echo "the $jump_dir directory is not exists"
fi