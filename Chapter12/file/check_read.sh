#!/bin/zsh
pwfile=/Users/ashuai/WorkSpace/Shell/Chapter12/file/no_read_test.txt
if [ -f $pwfile ]; then
    echo "file $pwfile exist"
    if [ -r $pwfile ]; then
        echo "file $pwfile is readable"
        tail $pwfile
    else
        echo "sorry, the file $pwfile is unreadable"
    fi
else
    echo "sorry, the file $pwfile don't exist"
fi