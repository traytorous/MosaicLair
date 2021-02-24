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
echo -e ""
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
echo -e "\n Austin Waddell 2019 -> Ongoing"
echo -e "\n Tray Keller 2019 -> Ongoing"
echo -e "\n Jason Jansen 2017 -> 2019"
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
