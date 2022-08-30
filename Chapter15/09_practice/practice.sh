#!/bin/bash
output=result.txt
IFS=','
while read name age male
do
    # cat >> $output << "INSERT INFO MEMBER(name, age, male) value ('$name', '$age', '$male');"
    echo "INSERT INFO MEMBER(name, age, male) value ('$name', '$age', '$male');" >> $output
done < $1
