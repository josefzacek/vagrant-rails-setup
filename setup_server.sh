#!/bin/bash

# set colors
GREEN='\e[1;32m'
BLUE='\e[1;36m'
YELLOW='\e[1;33m'
RED='\e[1;31m'
WHITE='\e[1;37m'

# would you like to install updates
printf "${YELLOW} Would you like to run ${GREEN} sudo apt-get update ${YELLOW} command (y/n)? ${WHITE}\n"
read serverUpdate

if [ $serverUpdate == "y" ]
  then
    printf "${BLUE} ------------  Running ${GREEN} cd / ${BLUE} command to navigate to root folder  ------------ ${WHITE}\n"
    cd /
    sleep 2
    printf "${BLUE} ------------  Running ${GREEN} pwd ${BLUE} command to confirm path  ------------ ${WHITE}\n"
    pwd
    sleep 5
    printf "${BLUE} ------------  Running ${GREEN} sudo apt-get update ${BLUE} command to get the latest update  ------------ ${WHITE}\n"
    sudo apt-get update
elif [ $serverUpdate == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi

# would you like to install upgrades
printf "${YELLOW} Would you like to run ${GREEN} sudo apt-get upgrade ${YELLOW} command (y/n)? ${WHITE}\n"
read serverUpgrade

if [ $serverUpgrade == "y" ]
  then
    printf "${BLUE} ------------  Running ${GREEN} cd / ${BLUE} command to navigate to root folder  ------------ ${WHITE}\n"
    cd /
    sleep 2
    printf "${BLUE} ------------  Running ${GREEN} pwd ${BLUE} command to confirm path  ------------ ${WHITE}\n"
    pwd
    sleep 5
    printf "${BLUE} ------------  Running ${GREEN} sudo apt-get upgrade ${BLUE} command to get the latest upgrade  ------------ ${WHITE}\n"
    sudo apt-get upgrade
elif [ $serverUpgrade == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi

# would you like to install unatended upgrades
printf "${YELLOW} Would you like to run ${GREEN} sudo apt-get install unattended-upgrades ${YELLOW} to install unattended upgrades (y/n)? ${WHITE}\n"
read installUnattendedUpgrades

if [ $installUnattendedUpgrades == "y" ]
  then
    printf "${BLUE} ------------  Running ${GREEN} cd / ${BLUE} command to navigate to root folder  ------------ ${WHITE}\n"
    cd /
    sleep 2
    printf "${BLUE} ------------  Running ${GREEN} pwd ${BLUE} command to confirm path  ------------ ${WHITE}\n"
    pwd
    sleep 5
    printf "${BLUE} ------------  Running ${GREEN} sudo apt-get install unattended-upgrades ${BLUE} command to install unattended upgrades  ------------ ${WHITE}\n"
    sudo apt-get install unattended-upgrades
elif [ $installUnattendedUpgrades == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi

# would you like to enable automatic unattended upgrades
printf "${YELLOW} Would you like to run ${GREEN} sudo dpkg-reconfigure --priority=low unattended-upgrades ${YELLOW} to enable automatic unattended upgrades (y/n)? ${WHITE}\n"
read installAutomaticUnattendedUpgrades

if [ $installAutomaticUnattendedUpgrades == "y" ]
  then
    printf "${BLUE} ------------  Running ${GREEN} cd / ${BLUE} command to navigate to root folder  ------------ ${WHITE}\n"
    cd /
    sleep 2
    printf "${BLUE} ------------  Running ${GREEN} pwd ${BLUE} command to confirm path  ------------ ${WHITE}\n"
    pwd
    sleep 5
    printf "${BLUE} ------------  Running ${GREEN} sudo dpkg-reconfigure --priority=low unattended-upgrades ${BLUE} command to install unattended upgrades  ------------ ${WHITE}\n"
    sudo dpkg-reconfigure --priority=low unattended-upgrades
elif [ $installAutomaticUnattendedUpgrades == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi
