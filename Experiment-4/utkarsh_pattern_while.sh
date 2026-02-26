#!/bin/bash

read -p "Enter value of n: " n

i=1
while [ $i -le $n ]
do
    j=1
    while [ $j -le $i ]
    do
        echo -n "*"
        j=$((j+1))
    done
    echo
    i=$((i+1))
done

i=$((n-1))
while [ $i -ge 1 ]
do
    j=1
    while [ $j -le $i ]
    do
        echo -n "*"
        j=$((j+1))
    done
    echo
    i=$((i-1))
done
