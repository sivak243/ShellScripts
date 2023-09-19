#!/bin/bash

no=3

for i in 1 2 3 4 5 6
do 

	if [[ $no -eq $i ]]
	then
		continue
		echo "$no is found!!!!"
		
	fi
	echo "Number is $i"
done


