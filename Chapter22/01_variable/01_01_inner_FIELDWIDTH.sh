#!/bin/zsh

echo '12376541297578
65499813274896' | awk 'BEGIN{
        FIELDWIDTHS="3 4 2 5"
        OFS="-"
    }
    {
        print $1,$2,$3,$4
    }'

echo
echo
echo 'test1 test2 test3 test3
aaa bbb ccc ddd' | awk '{
        print $1,$4
    }'