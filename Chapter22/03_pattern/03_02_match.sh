#!/bin/zsh

input='../input.txt'

echo 'match'
awk '
BEGIN{
    FS=","
}
$1 ~ /[a-z]{4}3[0-9]/{
    print $0
}
' $input

echo
echo
echo 'exclude match'
awk '
BEGIN{
    FS=","
}
$1 !~ /[a-z]{4}3[0-9]/{
    print $0
}
' $input