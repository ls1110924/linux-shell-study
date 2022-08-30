#!/bin/zsh

log="out.txt"
echo "first line" | tee $log
echo "second line" | tee -a $log
echo "third line" | tee -a $log