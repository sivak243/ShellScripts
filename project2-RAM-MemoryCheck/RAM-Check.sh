#!/bin/bash
#set -x

x=$(free -h | grep "Mem:" | awk '{print $4}')

echo "free memory space is : $x"

if ( $x -le 120mi )
then
	echo "Less RAM Memory $x "
else
	echo "Current RAM Free Memory is : $x "
	echo "Your are having good RAM Memory"
fi

