#!/bin/zsh

echo '12345678913124124' | sed '{
    :label
    s/\(.*[[:digit:]]\)\([[:digit:]][[:digit:]][[:digit:]]\)/\1,\2/
    t label
    }'