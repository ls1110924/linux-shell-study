#!/bin/bash

input='./data.txt'

genders=$(awk '{print $2}' $input | uniq)
echo "the genders result array is"
echo $genders
echo

for gender in $genders
do
    echo "current gender is $gender"
    awk -v gender=$gender '
    BEGIN {
        count=1
    }
    $2 == gender {
        for( i = 3; i <= NF; i++) {
            count+=$i
        }
    }
    END {
        print gender,"scores count is", count
        print "and they average is", int(count / FNR)
        print ""
    }
    ' data.txt
done


