#!/bin/zsh

input='test_branch.txt'

sed '{
    /last/b label1
    s/this is/xxx/
    :label1
    s/this is/yyy/
}' $input