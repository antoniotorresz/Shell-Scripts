#!/usr/bin/bash

myname="antonio"
myage="25"
files=$(ls)
now=$(date)
name="Antonio Torres"

clear
echo "Hello my name is $myname and i am $myage years old."
echo "Files in the current directory are: $files"
echo "today is $now"
echo "Hello, $name the system time is $date, your username is $USER using environment variable and with whoami command: $(whoami)"
echo "This are your env variables: $(env)"