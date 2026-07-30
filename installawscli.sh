#!/bin/bash

###################################
# Author: Abdul Malik Pasha       #
# Date: 29-07-2026                #
# Version: 01                     #
###################################


#set -x #debug mode
#set -e #exit mode

# Define color variables
GREEN="\033[32m"
RED="\033[31m"
YELLOW="\033[33m"
NC="\033[0m" # No Color / Reset

if command -v aws --version &> /dev/null;
then
	echo -e "${GREEN} AWS is already installed, no action taken :) "
	echo -e " Ending up the script "
	echo -e " Current Version of awscli installed on your machine is $(aws --version) ${NC}"
else

	echo -e "${RED} AWS CLI is not found in your machine, starting installation of AWS CLI :) ${NC}"

	echo -e "${YELLO} Installing..."


	echo -e "Grabbing zip from internet :)"

	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

	if unzip awsliv2.zip &> /dev/null; then

		echo -e "Unzip is already installed proceeding with next steps :) "
	
		unzip awscliv2.zip

	else
	
		echo -e "We've found out unzip is not installed on your machine, We need to install unzip first :)"

		echo -e "Updating package list"

		sudo apt update

		echo -e "Package list is upto date :)"

		echo -e "Now we've started installing unzip :)"

		sudo apt-get install unzip

		echo -e "Unzip installation is successful :)"

	fi

	echo -e "Unzipping awscliv2.zip folder :)"

	unzip awscliv2.zip

	sudo ./aws/install

	echo "AWS CLI installation successful.. ${NC}"

	aws --version
fi
