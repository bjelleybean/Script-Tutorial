#!/usr/bin/env bash

#use of logical operators in code script
<< logicaland
read -p "Enter a number: " num

#if [[ $num -ge 50 && $num -le 100 ]]
if [ $num -ge 50 -a $num -le 100 ]
then
    echo "$num is in the range of 50 - 100"
  else
    echo "$num is NOT in the range of 50 - 100"
fi
logicaland


read -p "Enter your information to start Docker: (say yes or no)" cnf
if [[ $cnf =~ y|yes ]]
then
    echo "starting docker..."
    sudo systemctl start docker
else
    echo "skipping..."
fi
