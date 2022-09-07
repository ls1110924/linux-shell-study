#!/bin/zsh
input_file='/etc/passwd'

echo
sed -n '$s/\/usr\/bin/\/usr\/sbin/p' $input_file
echo
sed -n '$s!/usr/bin!/usr/sbin!p' $input_file