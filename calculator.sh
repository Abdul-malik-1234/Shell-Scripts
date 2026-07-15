#!/bin/bash

#set -x #debug mode

#set -e #exit if errors

#set -o pipefail #exit if there are any issues

num1=$1
num2=$2
op=$3

if [[ $op == '+' ]];
then
	echo $((num1+num2))
elif [[ $op == '-' ]];
then
	echo $((num1-num2))
elif [[ $op == '/' ]];
then
	echo $((num1/num2))
elif [[ $op == 'mul' ]];
then
	echo $((num1*num2))
else
	echo "Please enter the valid operator in /,-,+,* "
fi
