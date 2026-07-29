#!/bin/bash

###################################
# Author: Abdul Malik Pasha       #
# Date: 29-07-2026                #
# Version: 01                     #
###################################


#set -x #debug mode
#set -e #exit mode


if command -v terraform -help &> /dev/null;
then
	echo "Terraform is already installed, no action taken :)"
	echo "Ending up the script"
else

wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install terraform

echo "Terraform installation successful.."
fi
