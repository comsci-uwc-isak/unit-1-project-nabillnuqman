#!/bin/bash

#this file is used to create a car and record trip info

#number of arguments is incorrect, then exit
if [ $# -ne 4 ]; then
	Echo "Invalid Input, please enter Plate, Model, Color, and number of passengers"
	exit
fi

#number of arguments is correct. Continue

plate=$1
model=$2
color=$3
pp=$4

#adding new entry to file maincarfile.txt
echo "$plate $model $color $pp" >> ~/Desktop/RentalCarApp/db/maincarfile.txt
echo "" > ~/Desktop/RentalCarApp/db/$plate.txt

bash frame.sh "Car created successfully"
 

