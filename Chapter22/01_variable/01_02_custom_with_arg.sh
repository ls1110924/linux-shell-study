#!/bin/zsh

input='../input.txt'

echo "normal argument witch couldn't read in begin"
awk '
BEGIN{
    FS=","
    print "the arg n at begin is",n
}
{
    print "the arg n is",n
    print $n
}
' n=1 $input

# 错误示例
# awk n=1 '
# BEGIN{
#     FS=","
#     print "the arg n at begin is",n
# }
# {
#     print "the arg n at begin is",n
#     print $n
# }
# ' $input

echo
echo
echo "v argument witch could read in begin"
awk -v n=2 '
BEGIN{
    FS=","
    print "the arg n at begin is",n
}
{
    print "the arg n is",n
    print $n
}
' $input

echo
echo
awk -F, -v n=2 -f test_v_arg.sh $input