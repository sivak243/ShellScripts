#!/bin/bash

read -p "Please enter the website that you want to check :" website

ping -c 1 $website
#sleep 5s

if [[ $? -eq 0 ]]
then 
	echo "Successfully connected to $website"
else
        echo "Unable to Connect $website"
fi

