#!/bin/zsh
passwd_file=/etc/passwd
if [ -O $passwd_file ]; then
    echo "you are the owner of the $passwd_file file"
else
    echo "sorry, you are not the owner of the $passwd_file file"
fi