#!/usr/bin/env bash

TO="bjelleybean@gmail.com"
TH_L=1000
free_RAM=$(free -mt | grep -E "Total" | awk '{print $4}')

if [[ $free_RAM -lt $TH_L ]]
then
    echo -e "Server RAM is runninng low\nAvailable RAM is: $free_RAM" | /usr/bin/mail -s "RAM INFO $(date)" $TO
fi
