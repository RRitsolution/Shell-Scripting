#!/bin/bash

##Author: Nirmal Shanker

##Author email: nirmal.elex@gmail.com

##This shell script is for taking backup configuration files


## Prepeare backuo directory


backup_directory="/home/nirmaldevops/backup"

mkdir -p $backup_directory



## Files to be taken for backup

backup_files="/etc /home"


##timestamp creation

timestamp=$(date +%F_%H-%M-%S)



##Output file names


backup="$backup_directory/systembackup.$timestamp.tar.gz"



##Backup creation

sudo tar -czvf $backup $backup_files


echo "Backup successfully completed"





