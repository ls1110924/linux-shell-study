#!/bin/zsh

sed '{
    :label
    s/\(.*[[:digit:]]\)\([[:digit:]][[:digit:]][[:digit:]]\)/\1,\2/
    t label
}'