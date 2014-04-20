#!/bin/zsh

openscad -o output.png master_bedroom.scad 2>&1 | grep ECHO | sed 's/^.*ECHO\:\ //g' | sort | uniq -c | sed 's/\"//g'

# Total length of 16 inch wide shelving
echo "Total length of 16 inch wood"
openscad -o output.png master_bedroom.scad 2>&1 | grep ECHO | sed 's/^.*ECHO\:\ //g' | sort | uniq -c | sed 's/\"//g' | grep -vi rod | sed 's/[a-zA-Z]//g' | awk '{print $1, "*",  $4 }' | bc  | paste -s -d + - | bc


# Total length of rod
echo "Total length of rod"
openscad -o output.png master_bedroom.scad 2>&1 | grep ECHO | sed 's/^.*ECHO\:\ //g' | sort | uniq -c | sed 's/\"//g' | grep -i rod | sed 's/[a-zA-Z]//g' | awk '{print $1, "*",  $4 }' | bc  | paste -s -d + - | bc
