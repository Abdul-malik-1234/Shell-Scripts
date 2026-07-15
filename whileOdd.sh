#!/bin/bash

<<Task
Print all the odd numbers specified in between the 2 arguments
Task

num1=$1
num2=$2

while (( num1 <=num2 ))
do
	if (( num1%2 != 0 ));
	then
		echo $num1
	fi
	((num1++))
done

