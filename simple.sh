#!/usr/bin/env bash

read_inputs()
{
read -p "Enter First Number: " num1
read -p "Enter Second Number: " num2
}

addition()
{
sum=$((num1+num2))
echo "Adding $num1 and $num2 result: $sum"
}

subtraction()
{
sub=$((num1-num2))
echo "Subtracting $num1 from $num2 result: $sub"
}

read_inputs
addition
subtraction
