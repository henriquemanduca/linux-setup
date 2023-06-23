#!/bin/bash

# To show error messages and script exit
function error_exit {
  echo "$1" 1>&2
  exit 1
}

# Source folder
read -p "Enter the source folder: " src_folder

# Check if source folder exists
if [ ! -d "$src_folder" ]; then
  error_exit "The source folder doesn't exist"
fi

# Destiny folder
read -p "Enter the destiny folder: " dest_folder

#  Check if destiny folder exists
if [ ! -d "$dest_folder" ]; then
  read -p "The destiny folder doesn't exist. Create? (Y/n)" create_dest_folder

  # Criar a pasta de destino, se o usuário desejar
  if [ "$create_dest_folder" = "Y" ] || [ "$create_dest_folder" = "y" ] || [ -z "$create_dest_folder" ]; then
    mkdir -p "$dest_folder" || error_exit "Unable to create destination folder"
  else
    error_exit "Destination folder doesn't exist"
  fi
fi

rsync -avP --delete --exclude-from=exclude-folders.txt "$src_folder" "$dest_folder"

echo "Copy completed"

