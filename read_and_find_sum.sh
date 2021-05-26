#!/usr/bin/env bash
read -p "Enter your first number: " a
read -p "Enter your second number: " b
#((sum=a+b))
sum=$(bc<<<"scale=2;$a+$b")

echo "The addition of $a and $b is: $sum"
