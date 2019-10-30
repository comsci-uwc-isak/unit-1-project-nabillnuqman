#!/bin/bash

#THis file creates the folder strucutre for the
#minimal Car Rental App

echo "Starting the installation"

cd /Users/nabillnuqman/Desktop
#create app folder
mkdir RentalCarApp

cd RentalCarApp

#create folder for database and scripts
mkdir db
mkdir scripts

echo "Structure created successfully"
  echo "Do you want to keep the file? yes/no"
read option
if [ $option == "yes" ]; then
bash frame.sh "Installation Successful"
fi

if [ $option == "no" ]; then
	cd /Users/nabillnuqman/Desktop
	rm -r RentalCarApp
fi
