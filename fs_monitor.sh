#!/usr/bin/env bash


file_usage_threshhold=70
rm -rf file_sys_info.txt
df -Ph | grep -vE "Filesystem|tmpfs" | while read line
do
    file_name=$(echo $line | awk '{ print $1 }')
    file_usage=$(echo $line | awk '{ print $5 }'| sed 's/%//g')
    echo "FS Name: $file_name, FS Usage: $file_usage"
      if [ $file_usage -gt $file_usage_threshhold ]
      then
        echo "$file_name: $file_usage" >> file_sys_info.txt
      fi

done

cont=$(cat file_sys_info.txt | wc -l)
if [ $cont -gt 0 ]
  then
    echo "Some file systems are exceeding the usage threshold"
    echo -e  "Subject:Alert\n\n $(cat file_sys_info.txt)\n" | /usr/sbin/sendmail bjelleybean@gmail.com
fi
