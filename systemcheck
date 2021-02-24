#!/bin/bas h
# Predecesor Jason Jansen - Linux T.A 2017 -> 2019
# Author Tray Keller - Linux T.A 2019 -> ongoing
# To the next generation of Linux T.A's good job getting the job. Keep your eyes up. And cherrish every momment you have :)
echo "Running system check on the lcs servers"
##########################################
# Using netcat to scan ssh default port to see if we can connect
declare -a SERVER
declare -a serverNumbers
response=" "
SYSLOGPATH="~/systemchecklogs"
###Creating a systemlogs in your homedirectory if it doesn't exist#####

if [[ ! -d "$SYSLOGPATH" ]] ; then
echo "Creating systemchecklogs folder in your home directory"
mkdir ~/systemchecklogs

fi


if [[ -f "~/systemchecklogs/serverlogs.txt" ]] ;then
	echo "found old systemlog file. Archiving it."
	mv ~/systemchecklogs/serverlogs.txt ~/systemchecklogs/serverlogs$(date + '%Y-%m-%d')
fi

echo -e "Number of lcs boxes that are broken \n" > ~/systemchecklogs/serverlogs.txt

### The severs ip addresss may change by the time I'm gone. use nslook up to change it. Or you can use sed to to automatically get the data.####
nc -vz  10.16.77.236 22 
if [ $? -ne 0 ]; then
        SERVER[0]='LCS1'
fi

nc -vz  10.17.183.204 22 
if [ $? -ne 0 ]; then
        SERVER[1]='LCS2'
fi

nc -vz  10.16.76.77 22 
if [ $? -ne 0 ]; then
        SERVER[2]='LCS3'
fi

nc -vz  10.16.76.79 22 
if [ $? -ne 0 ]; then
        SERVER[3]='LCS4'
fi

nc -vz  10.16.37.68 22 
if [ $? -ne 0 ]; then
        SERVER[4]='LCS5'
fi

nc -vz  10.16.37.69 22
if [ $? -ne 0 ]; then
        SERVER[5]='LCS6'
fi

nc -vz  10.16.37.231 22
if [ $? -ne 0 ]; then
        SERVER[6]='LCS7'
fi

##################################################################
#Checking results of servers
serverNumbers=${#SERVER[@]}
if [ $serverNumbers -gt 0 ] ;then
	echo -e "These are the following servers that are offline.\n"
	echo  ${SERVER[*]} >> ~/systemchecklogs/serverlogs.txt
	echo "Continuing system check. Data sent to serverlogs.txt in systemcheck logs folder. Check your home directory"
else
	echo -e "\n####Everything checks out. No servers are down####\n" >>  ~/systemchecklogs/serverlogs.txt
        echo -e "\nContinuing system check. Data sent to serverlogs.txt in systemchecklogs folder. Check your home directory."
fi

##################################################################

#read -p 'Would you like to continue: y or n ->  ' response
#if [ "$reponse" != "y" ] || [ "$response" != 'y' ]
#then
#	echo "You did not chose 'y'. Report done. Exiting program"
#	exit 0

###################################################################
#updating puppet yaml

#echo "Pulling puppet repository"
#cd /nfs/linux/puppet/tray/r10k-control
#git pull --rebase >>  ~/systemchecklogs/serverlogs.txt
#if [ $? -ne 0 ]; then
#	echo "ERROR COULD NOT PULL REPOSITORY....You're gonna have to do it manually. Error sent to systemchecklogs folder. Review it."
#fi

