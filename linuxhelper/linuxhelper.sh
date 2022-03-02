#!/bin/bash
#Author Tray Keller
#This script will be a helper for the new Linux Trainees. I hope it helps you in your endevors.

PS3="Please choose what you would like to know -> "
function showOptions(){
echo -e "\n1) tips \n2) resources \n3) pastadmins \n4) checkservers \n5) exit"
}

echo -e "########LINUX HELPER ON###### "
cat << "EOF"

.  .
          |\_|\
          | a_a\
          | | "]
      ____| '-\___
     /.----.___.-'\
    //        _    \
   //   .-. (~v~) /|
  |'|  /\:  .--  / \
 // |-/  \_/____/\/~|
|/  \ |  []_|_|_] \ |
| \  | \ |___   _\ ]_}
| |  '-' /   '.'  |
| |     /    /|:  |
| |     |   / |:  /\
| |     /  /  |  /  \
| |    |  /  /  |    \
\ |    |/\/  |/|/\    \
 \|\ |\|  |  | / /\/\__\
  \ \| | /   | |__
snd    / |   |____)
       |_/

EOF

echo -e "\n"
select entry in tips resources pastadmins checkservers quit;do

case $entry in

tips)

showOptions

;;

checkservers)
LogFolder="$HOME/systemstatus/$(date +"%m-%d-%Y")"
mkdir -p $LogFolder
echo -e "Checking if servers are down"
for x in {1..4};
do
	ping -c 3 "engr-lcs$x" >> $LogFolder/lcs_status.txt
done

showOptions

;;

resources)
echo -e "\n###Here are a list of helpful resources###"
echo -e "http://devhints.io/"
echo -e "http://sites.google.com/site/mrxpalmeiras/"
echo -e "https://linuxize.com/"
showOptions

;;

pastadmins)
spd-say -t male2 -p -80 -r -25 "Hello, my name is Morgan Freeman. Just wanted to say. See you space cowboy."
echo -e "\n###List of Past Linux TA's###"
echo -e "\n Junior Linux T.A: Austin Waddell 2019 -> 2022"
echo -e "\n Lead Linux T.A: Tray Keller 2019 -> 2022"
echo -e "\n Lead Linux T.A: Jason Jansen 2017 -> 2019"
showOptions
;;


quit)
echo -e "\nExiting now! Goodbye :)"
break

;;



*)

echo -e "\nInvalid option. Exiting Try again or select exit."

;;

esac
done
