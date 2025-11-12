#!/bin/bash

####Author:Nirmal Shanker
####Date:10.11.2025/10th November
####Author emailId:nirmal.elex@gmail.com
####ScriptPorpuse:User creation with help of Argument


echo "This script is for user creation with help of Argument"


echo "Create user for already passed agument as user"

sudo useradd -m $1
sudo useradd -m $2
sudo useradd -m $3
sudo useradd -m $4
sudo useradd -m $5

echo "Users successfullly created for input users name-$1,$2,$3,$4,$5"


