#!/bin/bash
#This program is for showing the frame for welcoming message
word=$1

#show X frame
for (( i=0; i<100; i++ ))
do
	echo -n "X"
done
echo " "

echo -n "X"

for (( i=0; i<99; i++ ))
do
	echo -n " "
	done
echo -n "X"
echo " "

len=${#word}
((spacing=(100-$len)/2))

echo -n "X"
for (( i=0; i<$spacing; i++ ))
do 
	echo -n " "

done
echo -n "$word"

for (( i=(100-$spacing); i<99; i++ ))
do
	echo -n " "
done

((odd=($spacing+$spacing+$len)))
if [ $odd -eq 99 ]; then
    echo -n " "
fi
echo -n "X"

echo " "
echo -n "X"
for (( i=1; i<99; i++ ))
do
    echo -n " "
done
echo -n "X"
echo " "

for ((i=0; i<100; i++))
do
    echo -n "X"
done
echo " "
