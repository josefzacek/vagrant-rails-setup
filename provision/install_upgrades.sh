#!/bin/bash

# set colors
GREEN='\e[1;32m'
BLUE='\e[1;36m'
YELLOW='\e[1;33m'
RED='\e[1;31m'
WHITE='\e[1;37m'

if [ $1 == "y" ]
  then
    printf "${BLUE} ------------  Running ${GREEN} cd / ${BLUE} command to navigate to root folder  ------------ ${WHITE}\n"
    cd /
    sleep 2
    printf "${BLUE} ------------  Running ${GREEN} pwd ${BLUE} command to confirm path  ------------ ${WHITE}\n"
    pwd
    sleep 5
    printf "${BLUE} ------------  Running ${GREEN} sudo apt-get upgrade ${BLUE} command to get the latest upgrade  ------------ ${WHITE}\n"
    sudo apt-get upgrade -y
elif [ $1 == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi
