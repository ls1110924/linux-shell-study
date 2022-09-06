#!/bin/zsh

function testGlobalVar {
    result=$[ $global_var * 2 ]
    echo "global var is $result"
}

function testInsideGlobalVar {
    inner_global_var=100
}


echo "start script"
global_var=10
testGlobalVar
echo
testInsideGlobalVar
echo "inner global var is $inner_global_var"
