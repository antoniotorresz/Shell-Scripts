#!/usr/bin/bash

clear

# -eq is for equal
# -ne is for no equal
# -gt is for grater than
mynum=2000
if [ $mynum -gt 0 ]
then
    echo "The condition is True"
else
    echo "The number is not 200"
fi

#-f is a check for a file
#-d is a check for a directory

if [ -f $(pwd)/helloworld ]
then
    echo "The file exist"
else
    echo "The file does not exist"
fi

if [ -f $(which fish) ]
then
    echo "fish is installed"
else
    echo "fish is not installed"
fi