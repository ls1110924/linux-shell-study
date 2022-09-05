#!/bin/zsh

func() {
    echo "this is first func"
}

echo "start script"

count=1
while [ $count -lt 5 ]
do
    func
    count=$[ $count + 1 ]
done

echo "rewrite func"

func() {
    echo "this is new func"
}

count=1
while [ $count -lt 5 ]
do
    func
    count=$[ $count + 1 ]
done

echo "end of script"
