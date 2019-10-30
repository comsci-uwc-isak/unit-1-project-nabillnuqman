#!/bin/bash

if [ $# -eq 1 ]; then
        	#open maincarfile.txt and delete one line
		#Mac sed requires a parameter after -i, so if you don't want a backup, you still have to add an empty string
	sed -i '' "/$1/d" ~/Desktop/RentalCarApp/db/maincarfile.txt
		#now we are entering the db file to remove the plate file
	cd ~/Desktop/RentalCarApp/db
	rm  $1.txt
	cd ~/Desktop/RentalCarApp/scripts
	bash frame.sh "Car successfully deleted"
else
	echo "invalid input"
fi


