#!/usr/bin/env bash
<<mycom
userID=$(id -u)
[[ $userID -eq 0 ]] && echo "you are ROOT" || echo "you are NOT root"


[[ $(id -u) -eq 0 ]]  && echo "you are ROOT" || echo "you are NOT root"
mycom

if [[ $(id -u) -eq 0 ]]
then
  echo "you are ROOT"
else
  echo "you are NOT root"
fi
