#/bin/bash

FILEPATH="/home/ubuntu/shellscripts/sample1.txt"

if [[ -f $FILEPATH ]]
then 
	echo "File exists"
else
	echo "File not exists"
	exit 1
fi

