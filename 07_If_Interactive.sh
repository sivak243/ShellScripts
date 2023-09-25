#!/bin/bash

read -p "Enter your Marks  : " a

if [[ $a -ge 75 ]]
then
	echo "You got distintion"
elif [[ $a -ge 60 ]]
then	
	echo "You got first class."
elif [[ $a -ge 35 ]]
then
	echo "You have passed the exam"
else
	echo "you have failed the exam."
fi

