#!/bin/bash
current_date=$(date +%d-%m-%Y)
backup_directory=$HOME/backup/data

if [ ! -d $backup_directory ]; then
  echo "Backup Directory does not exist!"
  echo "Do you wish to create it? (type "y" to create the backup directory)"
  read response
  if [ $response = y ];
  then
    mkdir -p $backup_directory
  else
    exit 0
  fi
  
fi


if [ ! -d $backup_directory/$current_date ]; then
    mkdir $backup_directory/$current_date
fi

tar cvfz $backup_directory/$current_date/backup.tar.gz * 
echo "Data saved!"