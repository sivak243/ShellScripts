#!/bin/bash

#set -x
set -e

x="SivaKumar"

y=${x:1:1}

echo "Substring Value: $y"

# The below code display the no of characters 'm' from a given string

y="kommoju"

result=$(grep -o "m"<<<$y | wc -l)

echo " $y is having letter 'm' for $result times.........."
