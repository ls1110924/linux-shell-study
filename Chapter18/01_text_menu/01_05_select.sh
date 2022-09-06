#!/bin/bash

diskspace() {
    clear
    df -k
}

function whoseon {
    clear
    who
}

function memusage {
    clear
    cat /proc/meminfo
}

PS3="Enter option:"
select option in "Display disk space" "Display logged on users" "Display memory usage" "Exit program"
do
    case $option in
        "Display disk space") diskspace;;
        "Display logged on users") whoseon;;
        "Display memory usage") memusage;;
        "Exit program") break;;
        *) clear
           "sorry, wrong selection";;
    esac
done