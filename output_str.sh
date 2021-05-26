#!/usr/bin/env bash
<<mycom
read -p "Enter Your Name: " "my_name"
my_name_up=${my_name^^}
echo "Your name in upper case characters is: $my_name_up"
mycom

read -p "What is your name?: "
echo "$REPLY"
