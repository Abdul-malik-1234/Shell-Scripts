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
        echo "************* Apt Manager Updation successful *************"	     
	sudo apt install git -y
fi
<<comment 

Check whether config is already update if not update it 

comment

GIT_USERNAME=$(git config --global user.name)

GIT_EMAIL=$(git config --global user.email)

if [ -z "$GIT_USERNAME" ]; then
	echo "Git username is not set, adding Git Username....."
	git config --global user.name "Abdul Malik Pasha"
else
	echo "Git username is already defined, checking for email is configured or not"
fi
if [ -x "$GIT_EMAIL" ]; then
	echo "Git email is not set, adding Git Email..........."
	git config --global user.email "abdulmalikpasha787@gmail.com"
else
	echo "Git email is already defined"
fi

echo "********* Configuration is already upto date *********"
echo "Listing Git Configuration.........."
git config --list 
