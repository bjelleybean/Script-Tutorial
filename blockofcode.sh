#!/usr/bin/env bash

#{ ls ; pwd ; date ; }
#which docker && { echo "docker is installed on this host" ; echo "The docker version is: $(docker -v)" ; }
#which apache2 2>&1 1>/dev/null && { echo "Apache is installed" ; echo "Apache version info is: $(apache2 -v)" ; } || echo "Apache is not installed"

<<mycom
if which docker 2>/dev/null 1>/dev/null
then
  echo "docker is installed on this host"
  echo "The docker version is: $(docker -v)"
fi


which docker 2>&1 1>/dev/null
if [[ $? -eq 0 ]]
then
  echo "docker is installed on this host"
  echo "The docker version is: $(docker -v)"
fi
mycom

if which apache2 2>&1 1>/dev/null
then
  echo "Apache is installed"
  echo "Apache version info is: $(apache2 -v)"
else
  echo "Apache is not installed"
fi
