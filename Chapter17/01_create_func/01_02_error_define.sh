#!/bin/zsh

count=1
echo "this is the line before define func1"

func1() {
    echo "func1"
}

while [ $count -lt 5 ]
do
    func1
    count=$[ $count + 1 ]
done

echo "the end of loop"

echo "invoke func2 which is not define"
func2
echo "invoke func2 complete"

func2() {
    echo "func2"
}

echo "the end of script"