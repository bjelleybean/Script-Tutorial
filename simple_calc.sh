#!/usr/bin/env bash
<<mycom
A simple calculator using case functions
mycom

clear
read -p "Number 1: " a
read -p "Number 2: " b
echo "========Menu for Calculator======"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "= = = = = = = = = = = = = = = = ="
read -p "Please make a choice from the above menu: " opt

case $opt in
  1)
      echo "You selected addition"
      echo "The addition of $a and $b is: $((a+b))"
      ;;
  2)
      echo "You selected subtraction"
      echo "Subtracting $a from $b is: $((a-b))"
      ;;
  3)
      echo "You selected multiplication"
      echo "The result of $a x $b is: $((a*b))"
      ;;
  4)
      echo "You selected division"
      echo "Dividing $a and $b results in: $((a/b))"
      ;;
  *)
      echo "You have selected an invalid option"
      ;;
esac
