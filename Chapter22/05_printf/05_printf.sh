#!/bin/zsh

input='../input_num.txt'

awk '
BEGIN{

}
{
    printf "%-5d %7d %-10.2f %10.2f \n", $1, $2,$3, $4
}
' $input