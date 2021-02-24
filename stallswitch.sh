#!/bin/bash
#Requires sudo for this to work because it needs access to sudo folder
#Should add user input to determine what pts to kill
#Should make this an alias :)
#apt-get install libnotify-bin ??? nah later
echo "What terminal do you want to stall?"
echo "choose the number associated to the terminal"
terminals=$(ls /dev/pts/*) # gets lists of terminals
echo $terminals
read input
clear
if [ -z $input ];then
	echo "Stalling user"
	cat /dev/pts/$input >> /dev/null
else
	echo "something went wrong"
	exit 1
fi
