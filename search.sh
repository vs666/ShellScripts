#!/bin/bash

# this takes string as arguments and searches it
# on probable search platforms

# a -> amazon.com
# g -> google.com
# y -> youtube.com
# so -> stackoverflow

z=$1
s=$2
let count=0
let a=2
for i in "$@"
do
        if [ $count -ge $a ]
        then
                s=$s+$i
        fi
        count=$((count+1))
done
if [ "$z" = "g" ]
then
        `firefox www.google.com/search?q=$s`
else
        if [ "$z" = "y" ]
        then
                `firefox www.youtube.com/results?search_query=$s`
        else
                if [ "$z" = "a" ]
                then
                        `firefox www.amazon.com/s?k=$s`
                else
                        if [ "$z" = "so" ]
                        then
                                `firefox stackoverflow.com/search?q=$s`
                        fi
                fi
        fi
fi

