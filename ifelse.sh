#!/bin/bash

##Author Name: Nirmal Shanker

##Author emailid: nirmal.elex@gmail.com

##This shell script is for bascially to perform if, else,for test




user="devops"

if [ $user != "devops" ]
     then
       echo "$user is not valid user to get access this directory"

      else
       echo "valid for user-$user to get access directory"

fi



user="devops"

if [ $user == "devops" ]
     then
       echo "$user is valid to get access this directory"

      else
       echo "Not valid for user-$user to get access directory"

fi
