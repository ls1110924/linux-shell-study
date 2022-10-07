#!/bin/zsh

input='../input.txt'

awk '
BEGIN{
    strArr["a"]="f"
    strArr["q"]="a"
    strArr["d"]="m"
    strArr["c"]="q"

    print "origin array"
    for(key in strArr) {
        print key, "->", strArr[key]
    }

    # asort(strArr, sortResult)
    # print "asort array"
    # for(key in sortResult) {
    #     print key, "->", sortResult[key]
    # }

    # asorti(strArr, sortiResult)
    # print "asorti array"
    # for(key in sortiResult) {
    #     print key, "->", sortiResult[key]
    # }

    str = "aaa,bbb,ccc,ddd"
    FS=","
    split(str, array)
    for(key in array) {
        print key, "->", array[key]
    }
    print
    str = "1 2 3 4"
    FS=" "
    split(str, array)
    for(key in array) {
        print key, "->", array[key]
    }

}
{
    print $1
}
' $input