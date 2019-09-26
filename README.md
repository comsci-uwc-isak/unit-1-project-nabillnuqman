![CarRental](logo.png)

Car Rental Minimal App
===========================

A car rental management minimal app in Bash.

Contents
-----
  1. [Planning](#planning)
  1. [Design](#design)
  1. [Development](#development)
  1. [Evalution](#evaluation)

Planning
----------
**Defining the Problem (Topic 1.1.1)**
(100-150 words explaining the context of the problem)
The client here wants to create a simple program so that he can simply keep tabs on his car rental business. He wants to keep his data organised to increase the efficiency, productivity and quality of his business. 


Design
---------
### First Sketch of the system
![SystemDiagram](ComSciSystemDiagram.jpg)

Development
--------
### The following script creates the app folder and inside it creates two more folders: db and sports
```.sh
#!/bin/bash

#THis file creates the folder strucutre for the
#minimal Car Rental App

echo "Starting the installation"
echo "Enter the path where you want to install. Press Enter"

read path

#moving to the desired location
cd $path
echo "moving to $path"
echo $PWD

#Check for correct change directory
if ( $path != $PWD ); then
        echo "Error creating the folder"
        exit
fi

#create app folder
mkdir RentalCarApp

cd RentalCarApp

#create folder for database and scripts
mkdir db
mkdir scripts

echo "Structure created successfully"
```
It first had an issue where it would work but show an error [to do] Fix the bug,
**Update:**
It has been fixed, there should have been squared brackets instead of normal brackets.

```.sh

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
        echo "done"
fi

if [ $option == "no" ]; then
        cd /Users/nabillnuqman/Desktop
        rm -r RentalCarApp
fi
```
**UpdateV2:**
I have made a new app which instantly adds the folder into the desktop and gives the option to uninstall.

Evaluation
-----------



