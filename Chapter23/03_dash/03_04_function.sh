#!/bin/dash

square(){
    echo $(($1 * $1))
}

value1=10
value2=$(square $value1)
echo "$value1 square result is $value2"
