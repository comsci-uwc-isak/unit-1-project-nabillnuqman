![CarRental](logo.png)
```.py
Marks=21
Demo=-
Total=(Marks+Demo)=21
```
**Graded on Nov 11**

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
The client is a Car Rental Office. The client kept all previous records offline and it proved inefficient. The client here wants to create a simple program so that he can simply keep tabs on his car rental business. He wants to keep his data organised to increase the efficiency, productivity and quality of his business. He does not want a complicated program because he doesn't know much about coding, and so he wants the program to be user skill independent.
<br> Steps to Create a car in a system: <br>
1. Get inputs (read/argument) (plates, model, color, passanger number)
2. Check number of arguments. if 4 then continue, if not exit "message"
3. Write to main file with one extra line. Not erasing other entries.
4. Create Car trip file with licenseplate .txt

### Rationale for proposed solution
The context
The client someone who is not really well experienced in Technology and programs, so in order to fulfill his needs we created a program in Bash terminal because it is really simple and straight forward, Bash is generally already installed on most computers, particularly apple computers. We are using github to showcase the process of creating the application including the problems, successes, and possible improvements the application has gone through, so that the user understands why and how this application is working. 


### Success Criteria
This are measuarable outcomes
1. A car can be created and stored in the database
1. A car information can be edited
1. A car can be deleted from the database
1. The installation is ***simple -> one step process***
1. A summary (total/average distance traveked) can be generated for a particular car
1. Trips can be recorded and stored for an existing car.
1. A basic database system is implemented.
1. A basic backup functionality.


**Criterion A**

|Level|Descriptor|
|----|-----|
|5|The client in the car rental office is identified and his situation described. The rationale for choosing the proposed product (Computer tools used) is justified and includes a range of appropriate criteria for evaluating the success of the product.|
```.sh
Rational
* You can improve this criterion by solving the following questions about the context: Who is the client?
Why is the product being developed?
* One more justificaiton for using BASH is that we were learning it. 
* Research on the internet other features of BASH that makes it a good choice for this system
* It is, nonetheless a good first report. Well done
```

Design
---------
### First Sketch of the system
![SystemDiagram](ComSciSystemDiagram.jpg)
**Fig.1**  Describes the first sketch of the diagram consisting of the main input and output components, actions, and software requirements.

### 
![Testing Plan](testingplan.png)


**Fig.2** is a flow diagram of a testing plan for the application programs

## Criterion B
|**level**|**Description**|
|-----|------------|
|6|An outline test plan is included but partially complete. A system diagram and some flow diagrams for algorithms in the product are included. They provide a basic understanding of how the product was developed.|
```.sh
Rationale
* Great job with the system diagram and the test plan.
* You are losing marks in this criterion because you did not include the descriptions after every figure. 
The description is a paragraph that explains the figure and tells the reader why you included the figure: "As seen in Fig. 1. the system proposed for the CarRentalApp consist of ..."
* Also you did not include the flow diagrams for at least three algorithms
```

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
I have made a new program which instantly adds the folder into the desktop and gives the option to uninstall.

**UpdateV3:**
```.sh

#!/bin/bash

#THis file creates the folder strucutre for the
#minimal Car Rental App

echo "Starting the installation"

cd /Users/nabillnuqman/Desktop
#create app folder
mkdir CarRentalApp

cd CarRentalApp

#create folder for database and scripts
mkdir db
mkdir scripts
cp -r ~/Desktop/App/scripts/. ~/Desktop/CarRentalApp/scripts
echo "Structure created successfully"
  echo "Do you want to keep the file? yes/no"
read option
if [ $option == "yes" ]; then
cd ~/Desktop/RentalCarApp/scripts/
bash frame.sh "Installation Successful"
fi

if [ $option == "no" ]; then
        cd /Users/nabillnuqman/Desktop
        rm -r CarRentalApp
fi
```
This is the updated version of the Installation program for the application, what is new to do this is that it also adds all the scripts into the application and I fixed the ability to allow the user to not keep the file if they don't want to and it will just delete the program. 

### The following script deletes the car files with just the use of the plate argument ###
```.sh

#!/bin/bash

if [ $# -eq 1 ]; then
                #open maincarfile.txt and delete one line
                #Mac sed requires a parameter after -i, so if you don't want a backup, you still have to add an empty string
        sed -i '' "/$1/d" db/maincarfile.txt
                #now we are entering the db file to remove the plate file
        cd ~/Desktop/RentalCarApp/db
        rm  $1.txt
else
        echo "invalid input"
fi
```
This program asks the user for the license plate of a specific car and with that information the program will search for the plate no in the maincarfile and delete all the car information and will delete the specific car file.

https://stackoverflow.com/questions/5584509/search-a-string-in-a-file-and-delete-it-from-this-file-by-shell-script
That link helped me come up with the code to remove the file.

### Man page for delete program ###
```

.TH man 6 "1 Nov 2019" "1.0" "delete man page"
.SH NAME
deletecar \- Deletes a car's information
.SH SYNONPSIS
bash deletecar.sh [license]
.SH DESCRIPTION
delete is a script that deletes a car record by deleting the car's text file and car information in maincarfile
.SH EXAMPLES
bash deletecar.sh LXH978
.SH AUTHOR
Nabill Nuqman
```
This is a man page explaining to the user how to use the delete program with a given example of the input

### The following script summarises the car information, specifically kilometers ###
```.sh
#!/bin/bash

if [ $# -ne 1 ]; then
  echo "invalid input, please enter license plate"
  exit
fi
```
**This code, checks if the user enters the correct input, if it doesn't, the program exits and asks the user to enter the correct input**

```.sh
cd ../db/
FILE=$1
if [ ! -f "$1.txt" ]; then
  echo "File $FILE does not exist."
  exit
fi
```
**This code checks if the input enters matches with an existing file, cd ../db/ is used because the summarise file is inside the scripts file so it needs to exit the script folder and enter the database folder to check if the file exists**

```.sh
total=0
while read line;
do
    for km in $line
    do
      (( total=$total+$km ))
      break
    done
  done < "$FILE.txt"
#show results nicely
  echo "Total kilometer of the group is $total"
  exit
```
### The Following script creates a car and record trip info ###

```.sh
!/bin/bash

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
echo "" > db/$plate.txt

bash frame.sh "Car created successfully"
```
This Program allows the user to create a car, the user inputs the car info then the program moves that information into the maincarfile and creates a specific file for the specific car.

### Man page for create program ###
```
.TH man 6 "28 Oct 2019" "1.0" "create man page"
.SH NAME
create \- create a new car
.SH SYNONPSIS
bash create.sh [license] [model] [color] [passengers]
.SH DESCRIPTION
create is a script that creates a new record in the database
.SH EXAMPLES
bash create.sh LXH978 Mazda Red 3
.SH AUTHOR
Nabill Nuqman
```
This is a man page for the create program which helps describe to the user how to use the program and what inputs are needed and it shows an example of one input.

### The following script is used to record the trip information about a car ###

```.sh
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

if [ ! -f "$plate.txt"]; then
echo "Car exists"
fi

echo "$plate $km $dateout $datein" >> ~/Desktop/RentalCarApp/$plate.txt
```
The program allows the user to input car information and the program will move the information into the specific car file.

### Man page for record program ###
```
.TH man 6 "1 Nov 2019" "1.0" "record man page"
.SH NAME
record \- record car information
.SH SYNONPSIS
bash record.sh [license] [km] [datein] [dateout]
.SH DESCRIPTION
backup is a script that is used to record car information then it moves it to the license text file
.SH EXAMPLES
bash record.sh lx923 203 19/11 23/11
.SH AUTHOR
Nabill Nuqman
```
This man page showcases the way to use the record program with a given example of the input

### The following script allows the user to edit a car information, the user enters the plate number and new information that is wanted to be placed instead ###

```.sh
#!/bin/bash
#This program edit the information of an exiting car in the
#maincarfile
#user enters [license place] [model] [red] [pp]

if [ $# -ne 4 ]; then
  echo "Error with the number of arguments"
  echo "Enter License Maker Model Passengers"
  exit
fi

license=$1
maker=$2
model=$3
pp=$4



if [ ! -f "$license.txt" ]; then
  echo "File not found!"
fi
cd db
#find the line with the given car plate and delete it
sed -i '' "/^$license/d" maincarfile.txt
#add the new information
echo "$license $maker $model $pp" >> maincarfile.txt
cd ..
bash frame.sh "Car edited successfully"
```

So all the user has to do is input the desired car plate no of the car the user wishes to change, along with the new information that is wanted. The program locates the file using the plate no and reads it and deletes the line and adds the new car information that was inputted by the user.

### The following script backups the database folder into the Desktop ###

```.sh
#!/bin/bash

#This program makes a copy of the the database file into the desktop

cp -r ~/Desktop/RentalCarApp/db ~/Desktop
```

### The following script allows the user uninstall the whole Car Rental App program by deleting everything ###
```.sh
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
```

### The following script summarises the car information ###
```.sh

#!/bin/bash
for f in /Users/nabillnuqman/Desktop/RentalCarApp/db/*
do
echo "in" `basename "$f"` "you have"
cat $f
done
```
Instead of summarising and showing averages and percentages, I decided with my current knowledge in programming to print the texts in the file of database** 

**Update**
```.sh
#!/bin/bash
#This script gives us a summary of a specific car by kilometers travelled

cd ~/Desktop/RentalCarApp/db
n=0
#We are now checking number of arguments
if [ $# -ne 1 ]; then
        echo "Enter a license plate"
        exit
fi

#We are now checking if the car entered by the user actually exist
if [ ! -f ~/Desktop/RentalCarApp/db/$1.txt ]; then
        echo " File doesn't exist"
        exit
fi
#We are now going to add the kilometers of a car
 while read line;
        do
        for word in $line
        do
        n=$((n + "$word"))
        break
        done
        done < "$1"
cd ../scripts
    bash frame.sh "The total kilometers travled by $1 is $n km"
```
This is an updated version of the summary script, printing the file text were pretty useless because the user could have just entered the car file instead so I made a script that adds up the total kilometers travelled by the car that is entered by the user.

## Criterion C
|**level**|**Description**|
|-----|------------|
|5|The proposed solution is characterized by the appropriate use of existing tools. The techniques are adequate for the task and their use is explained. All sources are identified.|
```.sh
Rationale
* Neat work here Nabill. Specially with the updates and by recording where you found the solutions.
* You can also include the citations to the references of the sources that you researched in the internet using MLA format. For example: "As shown in [1], to read a file in bash we can use:"  then the reference in the bottom of the document in the References section: [1] Pinzon, Ruben. "Read files in bash", ..... 
```

Test 1:


step 1: create a car using the script create


step 2: check that the license file .txt was created


step 3: Check that the car was added to the main file

The first run of the test was unsuccessful because the database folder was nonexistent, The create program did not save the plate file inside the database. To solve that, the line `echo "" > $plate.txt` to `echo > db/$plate.txt` was changed.

Second run realised that the test file needed to move to the main folder
```
cd ../
```
This is necessary because create.sh is in the main folder whereas the test file is in the /tests folder.

We used the command tail to check if the car exists in the maincarfile.
```
lastline = $( tail -n 1 db/maincarfile.txt )
```
using tail, it reads the textfile from bottom up and we use -n 1 to read the first line.

we added and if command, to check if it exist
```
if [ "TXM301 nissan red 9" == "$lastline" ];then
        echo "test two: Record was entered correctly: passed"
else
        echo "Test two: Failed"
fi
```
Quotation marks are used for lastline are used so that the word stays as a word, with quotation marks, the program will recognizes the spaces and count it as different words.

### Summary
We ran Dynamic tests, Alpha tests, and Whitebox tests. Dynamic tests are actually executing the code made. Alpha testing performed by testers who are usuallyinternal employees of the organization. White-box testing (also known as structural testing) looks inside the software that is being tested and uses that knowledge as part of the testing process. Whitebox testing looks inside the software that is being tested and uses that knowledge as part of the testing process.

Evaluation
-----------
### Evidence for Success Criteria
![Sucess Criteria](successcriteria.png)
**Fig.3** Describes a flow diagram to show that the success criteria was met. 
- A car was succcessfully be created and stored in the database
- A car information was successfuly able to be edited
- A car was successfully able to be deleted from the database
- The installation is of Car rental is simple and is a one step process
- The summary (total/average distance traveked) fixed and able to be generated
- Trips can be successfuly recorded and stored for an existing car.
- A basic database system has been successfully implemented.
- A basic backup functionality has been successfully implemented.

### Improvements for the future
Several of the programs could have allowed the user more choice and freedom. For example, the backup command could allow the user to be given the choice of where they want to backup their database.
Some of the programs like summary were made with really simple coding due to my lack of capability but could be improved to increase functionality. The summary program just collects the total distance, perhaps together with that we can calculate how many kilometers left the car has before the car has to be serviced. A car usually has to be serviced every 6 months or once a year. So that is 10,000 kilometers every six months.
The use of bash may be very simple to someone taking a computer science course, but to someone with no knowledge of programming, it may seem very unfriendly to interact. Perhaps the platform could be scaled up. Making a interactive program that could be more user-friendly, such as a mobile application or a web program. That instead of just seeing code, could be touch interactive, with a single click could show the summary of their cars.
Another program that could possibly be made was one with the customer details, when renting a car, a car rental shop should keep customer details incase the customer steals a car or damages the car. So another program perhaps that creates a database for the customers including (first name) (last name) (id number) (car rented).
 

## Criterion D
|**level**|**Description**|
|-----|------------|
|5|The product is fully evaluated against the success criteria identified in criterion A. Recommendations for further improvement of the product are realistic.|
```.sh
Rationale
* You evaluation of the success criteria is sufficient and the improvement are also realistic.
```
