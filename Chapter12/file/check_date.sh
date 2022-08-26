#!/bin/zsh
base_dir=/Users/ashuai/WorkSpace/Shell/Chapter12/file
file1=$base_dir/older_file.txt
file2=$base_dir/newer_file.txt
if [ $file1 -nt $file2 ]; then
    echo "the $file1 is newer than $file2"
else
    echo "the $file1 is older than $file2"
fi

if [ $file1 -ot $file2 ]; then
    echo "the $file1 is older than $file2"
else
    echo "the $file1 is newer than $file2"
fi

if [ badfile1 -nt badfile2]; then
    echo "the badfile1 is newer than badfile2"
else
    echo "the badfile1 is older than badfile2"
fi