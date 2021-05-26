#!/usr/bin/env bash

if [[ $# -ne 2 ]]
then
    echo "Admin, please run this script as follows"
    echo "usage: $0 <serviceName> <ActionToExecuteOnService>"
    echo "Valid ActionToExecuteOnService are: start stop restart status"
    exit 1
fi
#read -p "Enter a service to see the status of it: " serviceName
#read -p "Enter an action to execute on your selected service: $serviceName " action
serviceName=$1
action=$2

sudo systemctl $action ${serviceName}
