#!/bin/bash

#This file uninstalls RentalCarApp by deleting all folders

	echo "Are you sure you want to uninstall RentalCarApp?"
	echo "Click enter to uninstall, Click n to go back"

read back

if [[ ($back == n) ]];then
	echo "Uninstall cancelled"
exit

else
	cd ~/Desktop
  	rm -r RentalCarApp
  	echo "RentalCarApp succesfully uninstalled"
fi
