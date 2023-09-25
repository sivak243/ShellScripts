#!/bin/bash

a=0
b=10

while [ $a -le $b ]
do
	echo " Value of a is $a"
	let a++
done

