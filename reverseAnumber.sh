#!/bin/bash

read -p "Enter the number:" num
result=0
while (( num != 0 ));
 do
	 rem=$(( num % 10 ))
         num=$(( num / 10 ))
         result=$(( result * 10 + rem ))
done
echo $result

