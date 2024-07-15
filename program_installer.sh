#!/usr/bin/bash
program=iwconfig
if command -v $program
then
    echo "$program is installed"
else
    echo "$program is not available, installing it..."
    sudo apt update && sudo apt install -y $program
fi

sudo $program