#!/usr/bin/env bash

#Author: krouac

<<Com
Author: krouac
Created: May-2021
Purpose: Docker version script
Com

: '
This sends docker version output to the terminal - optimized for portability for Linux/Unix systems
'

dockerStatus=$(systemctl status docker | awk '/Active/ { print $3 }' | tr -d "[()]")
dockerVersion=$(docker -v | awk '/version/ { print  $3 }' | tr -d ",")
echo "The Docker Status is: $dockerStatus"
echo "The Docker version is: $dockerVersion"
