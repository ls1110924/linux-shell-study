#!/bin/zsh
userName=nobody
if grep $userName /etc/passwd
then
    echo "find user $userName"
    echo "enter if child condition"
    if pwd; then
        echo "if child condition finish"
    fi
    echo "exit if child condition"
else
    echo "couldn't find user $userName"
    echo "enter else child condition"
    if ls -d /Users/$userName/; then
        echo "but find user direction"
    fi
    echo "exit else child condition"
fi

echo "start loop if"
userName=ashuai1

if grep $userName /etc/passwd; then
    echo "find user $userName"
elif ls -d /Users/$userName/; then
    echo "$userName has direction"
elif ls -d /Users/ashuai/WorkSpace/; then
    echo "has WorkSpace direction"
fi
