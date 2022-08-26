#!/bin/zsh
# item_name=$HOME
item_name=$HOME/WorkSpace/Shell/Chapter12/file/test.txt
echo
echo "the item being checked: $item_name"
echo
if [ -e $item_name ]; then
    echo "the item, $item_name, does exist"
    echo "but is it a file?"
    if [ -f $item_name ]; then
        echo "yes, $item_name is a file"
    else
        echo "no, $item_name is not a file"
    fi
else
    echo "the item, $item_name, does not exist"
    echo "nothing to update"
fi