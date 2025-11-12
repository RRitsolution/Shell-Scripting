#!/bin/bash

<< Function
Author-Nirmal Shanker
Author email id- nirmal.elex@gmail.com
Date: 11/11/2025

Function


echo "##This script is for Function"


nirmal_function() {
		
	echo "Updating system & Upgrading system"

	sudo apt update -y
	sudo apt upgrade -y

	echo "System successfully update & upgraded"

}

nirmal_function



dir_creation() {
       mkdir nirmal

}

if ! dir_creation; then

	echo "The code is being exited as the directory is already exists"
	exit 1

fi



echo "This shoud not wotk bcoz the code is intruppted"




