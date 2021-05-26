#!/usr/bin/env bash

if [[ $(id -u) -eq 0 ]]
  then
      if sudo systemctl status docker | 1>/dev/null 2>/dev/null
  then
      echo "Docker is already running"
  else
      echo "Starting Docker Service..."
      sudo systemctl start docker
      echo "Successfully Started Docker Service"
fi
  else
      if sudo -v 1>/dev/null 2>/dev/null
  then
      if systemctl status docker  1>/dev/null 2>/dev/null
  then
      echo "Docker is already running"
  else
      echo "Starting Docker Service..."
      sudo systemctl start docker
      echo "Successfully Started Docker Service"
fi
  else
      echo "Sorry, you are not logged in as ROOT"
fi
fi
