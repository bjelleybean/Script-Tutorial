#!/usr/bin/env bash

pwd
ls

awk 'BEGIN { print "Hello" }'
awk -f my_awk.awk javaversion.txt
