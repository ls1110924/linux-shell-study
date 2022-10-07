BEGIN{
    num=2
    numSquare=square(num)
    print num, "square is", numSquare
    first=6
    second=4
    print first, "/", second, "result is", div(first, second)
}
{
    print $1
}