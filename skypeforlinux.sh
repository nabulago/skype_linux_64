#!/bin/sh
# Source of the script
#https://tecadmin.net/install-skype-on-ubuntu/#
# Author: Rollermax
# found the code the website & compiled a shell file
# to ease the installation
# update & upgrade #
printf "Removing old installation of skype...\n"
sudo apt remove skype
printf "Skype removed\n"
sudo apt autoremove
sudo rm -rf /home/.Skype
printf "Updating the repository..."
sudo apt-get update
printf "Upgradinging the repository..."
sudo apt-get upgrade
printf "Getting the latest installation file from the repository..."
wget https://repo.skype.com/latest/skypeforlinux-64.deb
printf "Starting installation with the dependancies...\n"
sudo apt-get install -f && sudo dpkg -i skypeforlinux-64.deb
printf "Installation complete"
printf "Connect to the World!!"
