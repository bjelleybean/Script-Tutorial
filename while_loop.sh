#!/usr/bin/env bash

<< mycom1
while true
do
    echo "OK"
    echo "......"
done
mycom1

<< mycom2
while date &> /dev/null
do
    echo "Date Command is ececuting with WHILE LOOP"
done
mycom2

start=1
while [[ $start -le 10 ]]
do
    echo "$start"
    ((start++))
done
