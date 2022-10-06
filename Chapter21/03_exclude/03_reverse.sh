#!/bin/zsh

input='../input.txt'

sed -n '{
    p
    1!G
    h
    $p
}' $input