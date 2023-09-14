#!/bin/bash

echo " Plesae select from the below mentioned Options."

echo "a. Print todays date"
echo "b. Display the current path"
echo "c. Display the list of files"

read -p " Enter your cholice : " choice

case $choice in
	a)date;;
	b)pwd;;
	c)ls -ltr;;
	*)echo "Invalid Option";;
esac

