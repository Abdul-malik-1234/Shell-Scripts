#!/bin/bash

#############################
# Author: Abdul Malik Pasha #
# Date: 03-08-2026          #
#############################

if command -v tree &> /dev/null;
then
	echo "Tree is already installed and available to use :)"
        echo "No action taken"
else
	echo "Installing tree........"
	echo "Updating apt manager"
	sudo apt update
	echo "Apt manager is up-to-date"
	sudo apt install tree
fi
