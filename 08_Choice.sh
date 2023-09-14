#!/bin/bash

echo " Plesae select from the below mentioned Options."

echo "a. Print todays date"
echo "b. Display the current path"
echo "c. Display the list of files"
echo "d. Display the memory space"
echo "e. Display process with high CPU utilization"
echo "f. Display the ports information"

read -p " Enter your cholice : " choice

case $choice in
	a)      echo "Todays date is : "  
		date
		echo "************";;        # ;; will acts like a break statement in switch class
	b)pwd;;
	c)ls -ltr;;
	d)df -h;;
	e)top;;
	f)ss -tulp;;
	*)echo "Invalid Option"
esac

