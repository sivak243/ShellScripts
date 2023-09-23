#!/bin/bash
#set -x

x=$(free -h | grep "Mem:" | awk '{print $4}' | tr -d 'Mi')

echo "free memory space is : ${x}Mib"

if [ $x -le 100 ] 
then
    echo "Less RAM Memory ${x}Mib "
else
    echo "Current RAM Free Memory is : $x "
    echo "Your are having good RAM Memory"
fi
