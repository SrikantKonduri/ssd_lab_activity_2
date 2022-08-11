#!/bin/bash

getMiddleLineNumber(){
    let linecount=$1
    middle=$(($linecount/2))
    if (( (($linecount%2)) == 1 ))
    then
        middle=$(($middle+1))
    fi
}

path=$1

linecount=$(grep "" -c $path)
getMiddleLineNumber linecount
result_line=$(sed $middle'!d' $path)

echo $result_line