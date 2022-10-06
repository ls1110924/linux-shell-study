#!/bin/zsh

input='../input.txt'

echo "first"
awk '
BEGIN{
    FS=","
    print "NF=",NF,"NR=",NR,"FNR=",FNR
}
{
    print $1,"NF=",NF,"NR=",NR,"FNR=",FNR
}
' $input

echo
echo
echo "second"
awk '
BEGIN{
    FS=","
    print "NF=",NF,"NR=",NR,"FNR=",FNR
}
{
    print $1,"NF=",NF,"NR=",NR,"FNR=",FNR
}
' $input $input