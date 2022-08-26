#!/bin/zsh
if pwd
then
	echo "It work"
	echo "It is second command"
fi

if notACommand
then
	echo "It work"
fi
echo "out of if"

userName=ashuai

if grep $userName /etc/passwd
then
    echo "This is first command"
    echo "This is second command"
    
    ls -a /Users/$userName/.b*
else
    ls -a /Users/$userName/.b*
fi