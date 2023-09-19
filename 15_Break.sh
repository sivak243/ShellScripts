#!/bin/bash

no=3

for i in 1 2 3 4 5 6
do 

	if [[ $no -eq $i ]]
	then
		echo "$no is found!!!!"
		break
	fi
	echo "Number is $i"
done


