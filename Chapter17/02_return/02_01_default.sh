#!/bin/zsh

func1() {
    echo "this is first func"
    ls -l 'notfound'
}

func2() {
    ls -l 'notfound'
    echo "this is second func"
}

echo "start script"
echo "invoke func1"
func1
echo "the func1's result is $?"

echo
echo "invoke func2"
func2
echo "the func2's result is $?"

echo "end of script"