#!/bin/bash
echo "show multi var input"
read -p "plz enter your name(first name and last name): " first last
echo "hello $first $last, welcome"
read -p "plz enter your age:"
days=$[ $REPLY * 365 ]
echo "u r $days days old"