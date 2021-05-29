#!/usr/bin/env bash

<< mycom
for eachValue in docker nginx
do
    echo "The Service is: $eachValue"

done
mycom

myservices=(docker nginx)

for eachValue in ${myservices[@]}
do
    echo "The Service is: $eachValue"
done
