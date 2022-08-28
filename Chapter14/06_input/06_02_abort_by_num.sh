#!/bin/bash
echo "hello"
if read -n 1 -p "Do u want to continue:[Y/N] " name
then
    case "$name" in
        y | Y) echo
               echo "sure, continu on ...";;
        n | N) echo
               echo "ok bye"
               exit;;
    esac
fi
echo "this is the end of script"