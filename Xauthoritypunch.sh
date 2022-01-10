#Run this to enable your X authentication so that you can see the VNC consoles
touch /root/.Xauthority
xauth add $(su - ${SUDO_USER} -c "xauth -f $(echo ~${SUDO_USER}/.Xauthority ) list")
