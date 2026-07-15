#!/bin/bash

<<task

$1 is folder name
$2 is start range
$3 is end range

task

mkdir abc

for (( i=$2 ; i<=$3 ; i++ ));
do
	mkdir "./abc/$1$i"
done

