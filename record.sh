#!/bin/bash

#This file is used to record trip information of a car

if [ $# -ne 4 ]; then
        Echo "Invalid Input, please enter Plate, km, DateOut, and date in"
        exit
fi

#number of arguments is correct. Continue

plate=$1
km=$2
dateout=$3
datein=$4

if [ ! -f "$plate.txt" ]; then
echo "Car exists"
fi

echo "$plate $km $dateout $datein" >> ~/Desktop/RentalCarApp/db/$plate.txt

