#!/bin/bash

input='../input.txt'

echo 'origin file'
cat $input

echo
echo

sed '/one/{ n; d; }' $input
