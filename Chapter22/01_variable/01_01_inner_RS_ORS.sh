#!/bin/zsh

echo '
AShuai
28

XXX
43' | awk '
    BEGIN{
        RS=""
        ORS="###"
    }
    {
        print $1,$2
    }
    END{
        ORS=""
        print "\n"
    }
'