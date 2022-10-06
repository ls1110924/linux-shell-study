BEGIN{
    print "the arg n at begin is",n
}
{
    print "the arg n is",n
    print $n
}