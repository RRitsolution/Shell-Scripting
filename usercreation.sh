#!/bin/bash


##This shell scripting is for User creation##


<< EOF


This is completely devops shell scipting learning 

EOF


a=$(date)
echo "Today is date: $a"



echo "Input is required for use creation"

read -p "Enter the name for use ceation:  " username


sudo useradd -m $username


echo "New Username successfully created for $username"




 
