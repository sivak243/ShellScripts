#!/bin/bash

function welcomenote {
	echo "----------------------"
       	local a=$1
	local b=$2
	sum =$(($a+$b)) 

	echo ""Sum of value is = \"$sum\"""
}

welcomenote 20 20
welcomenote 20 30

