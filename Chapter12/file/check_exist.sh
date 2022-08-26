#!/bin/zsh
location=$HOME//WorkSpace/Shell/Chapter12/file
file_name=test.txt
if [ -e $location ]; then
    echo "OK on the $location directory"
    echo "Now checking on the file, $file_name"
    if [ -e $location/$file_name ]; then
        echo "OK on the filename"
        echo "Updating current date.."
        date >> $location/$file_name
    else
        echo "file does not exist"
        echo "nothing to update"
    fi
else
    echo "The $location directory does not exist"
    echo "nothing to update"
fi
