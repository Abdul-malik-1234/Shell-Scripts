#!/bin/bash

#set -x #debug mode

#set -e #exit the script when there is a error

<<comment
Task:
1. print even numbers in between given arguments including the initial and final arguments
comment

num1=$1
num2=$2

while (( num1 <= num2 ))
do
	if (( num1 != 0 && num1%2 == 0 ));
	then
		echo $num1
        fi
	((num1++))
done

