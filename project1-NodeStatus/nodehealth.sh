#!/bin/bash
set -e
set -x

echo " Plesae select from the below mentioned Options."

echo "a. Display all the process in node"
echo "b. Display the highly utilized process"
echo "c. Do you want to kill any running process"
echo "c. Display the memory usage"
echo "d. Display the RAM Space"
echo "e. Display the number of CPU's"
echo "f. Display the ports information"
echo "g. Please enter the file in every lunix directory"

read -p " Enter your cholice : " choice

case $choice in
	a)      echo "********************Here are your running process********************" 
		ps -ef;;
	b)top;;
	c)
	  read -p "Please enter the process id to kill" processid

	  if [ $processid -gt 0 ]
	  then  
		x=$(top -b -n 1 | grep " 36 " | awk -F" " '{print $12}')
	        echo "You are deleting the process : ${x} "	
		
                read -p "Are you sure to delete the process : $x ?? (Y/N) :" confirm

		if [$confirm -eq "Y"]; 
		then
		     kill -9 $processid     # Terminate the proceie id
		else
		     echo "We are not Terminating the process "
		if
	  else
	  echo "Please enter valid process id to kill....."	 
	  fi
	  ;;
	d)df -h;;
	e)free;;
	f)nproc;;
	g)ss -tulp;;
	h)read -p  "Enter the file name to search = " search
       	  #sudo su   # Run the script with Sudo access run the find command 
	  find / -name $search;; 
	  
	*)echo "Invalid Option"
esac

