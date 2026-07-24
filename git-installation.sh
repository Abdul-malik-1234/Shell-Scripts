#!/bin/bash

echo "******************* This script does below things *******************"
echo "* 1. apt update                                                     *"
echo "* 2. Checks whether Git is installed or not, if it is not installed *
, it will install it                                                *"
echo "* 3. Updates Git configuration                                      *"
echo "*********************************************************************"
echo "Checking Git version ...."

if command -v git &> /dev/null; then
	echo "Git is already installed no action taken....."
	git --version
else
	echo "Git is not installed"
	echo "************ Updating apt manager ************"
	sudo apt update
        echo "************* Apt Manager Updation successful *************"	     sudo apt install git -y
fi

