#!/bin/zsh

openscad -o output.png master_bedroom.scad 2>&1 | grep ECHO | sed 's/^.*ECHO\:\ //g' | sort | uniq -c | sed 's/\"//g' | grep 16 | sed 's/[a-zA-Z]//g' | awk '{print $1, "*",  $4 }' 

