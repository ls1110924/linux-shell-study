#!/bin/zsh
var1=10
var2=21
var3=$(expr $var1 + $var2)
var4=$[$var1 * $var2 - $var3]
echo "the result value is $var3"
echo "the result value is $var4"
var5=$[$var2 / $var1]
echo "the result valye is $var5"
echo "the shell script result is $?"
exit 123