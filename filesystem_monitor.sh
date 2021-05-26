#!/usr/bin/env bash

MailID="bjelleybean@gmail.com"

echo -e "The file system utilization on $(hostname -s) is: \n $(df -H)" | /usr/bin/mail -s "File System Utilization" "$MailID"
