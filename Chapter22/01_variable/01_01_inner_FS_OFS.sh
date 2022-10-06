#!/bin/bash

input='../input.txt'

echo 'test script var'
awk '
BEGIN {
    FS=","
    OFS="-"
}
{
    print $1,$3
}' $input


echo
echo

echo 'test cmd var'
awk -F, '
BEGIN {
    OFS="_"
}
{
    print $1,$3
}' $input