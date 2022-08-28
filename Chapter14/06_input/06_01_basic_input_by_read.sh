#!/bin/bash
echo "hello"
echo -n "plz enter your name: "
read name
echo "Hello $name, welcome"
echo "see an other way to get input"
read -p "plz enter your age: " age
days=$[ $age * 365 ]
echo "u has been $days days old!"