#!/bin/bash

echo " Plesae select from the below mentioned Options."

echo "a. Display all the process in node"
echo "b. Display the highly utilized process"
echo "c. Display the memory usage"
echo "d. Display the RAM Space"
echo "e. Display the number of CPU's"
echo "f. Display the ports information"

read -p " Enter your cholice : " choice

case $choice in
	a)      echo "********************Here are your running process********************" 
		ps -ef;;
	b)top;;
	c)df -h;;
	d)free;;
	e)nproc;;
	f)ss -tulp;;
	*)echo "Invalid Option"
esac

