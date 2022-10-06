#!/bin/zsh

echo 'this is, this is, this is, this is a big test' | sed '{
    :label1
    s/,//p
    /,/b label1
    }'