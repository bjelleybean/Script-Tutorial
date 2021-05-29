#!/usr/bin/env bash

myservices=(docker nginx)
for eachService in ${myservices[@]}
do
    sudo systemctl status $eachService 1>/dev/null 2>/dev/null
    if [[ $? -ne 0 ]]
    then
      echo "Your $eachService is not running"
    fi

done
