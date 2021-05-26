#!/usr/bin/env bash

#for each in simple_calc.sh output_str.sh startdocker.sh filesystem_monitor.sh
clear
for each in $(ls *.sh)
do
  if [[ -x $each ]]
  then
    echo "$each has execution permissions"
    sleep 1
  else
    echo "$each does not have execution permissions"
    sleep 1
  fi
done
