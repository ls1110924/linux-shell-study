#!/bin/zsh
global_dir=$(mktemp -d study_shell.XXXXXX)

echo "the global log dir location is $global_dir"

cd $global_dir

tmp1=$(mktemp log.XXXXXX)
tmp2=$(mktemp log XXXXXX)

exec 3>$tmp1
exec 4>$tmp2

echo "first line" >&3
echo "second line" >&4
echo
echo "this is tmp1 file"
cat $tmp1
echo "this is tmp2 file"
cat $tmp2

exec 3>&-
exec 4>&-

cd ..

rm -rf $global_dir