#!/bin/bash
echo "hello"
if read -t 5 -p "plz enter your name:" name
then
    echo "hello $name, welcome"
else
    echo
    echo "sry, too slow"
fi