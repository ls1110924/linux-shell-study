#!/bin/zsh

echo "this is, this is, this is, this is, this is a big big big test" | sed -n '{
    :label
    s/,//p
    t label
    }'