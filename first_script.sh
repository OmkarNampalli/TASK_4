#!/bin/bash

#Above line is known as shebang and is used to tell interpreter the type of shell to use
#this script is to demonstrate the usage of variables, loops, and conditions in a script

DATE=$(date) #usage of variable and allocating it the output of a command
x=0 #Declaring a variable 

echo "This script started at $DATE"

#for loop
for i in {1..10}
do
        let x++
done

#while loop
while [[ $x -ge 1 ]]
do
        let x--
done

#condition
if [[ $x == 0 ]]
then
        echo "script was succesful"
else
        echo "script was Unsuccesful"
fi
