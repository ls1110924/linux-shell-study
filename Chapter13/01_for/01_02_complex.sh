#!/bin/zsh
for test in I don\'t know if "this'll" work
do
    echo "word: $test"
done

for state in Navada New Hampshire New Mexico New York North Carolina
do
    echo "state: $state"
done

for state in Navada "New Hampshire" "New Mexico" "New York" "North Carolina"
do
    echo "state: $state"
done