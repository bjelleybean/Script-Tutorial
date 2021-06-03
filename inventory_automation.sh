#!/usr/bin/env bash

Server_Name=$(uname -n)
IP_Address=$(ifconfig| grep inet|awk 'NR==1{print $2}')
OS_Type=$(uname)
Uptime=$(uptime| awk '{print $3}')

#creating header in CSV
echo "S_No,Server_Name,IP_Address,OS_Type,Uptime" > server_info.csv
echo "1,$Server_Name,$IP_Address,$OS_Type,$Uptime" >> server_info.csv
