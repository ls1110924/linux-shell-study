#!/bin/zsh
#  test permanet redirect output
echo "this is the first normal line show on the screen"
echo "this is the second error line show on the screen" >&2
exec 1>out.txt
exec 2>err.txt

echo "this is the third normal line show on the output file"
echo "thyis is the fourth error line show on the err file" >&2