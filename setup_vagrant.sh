#!/bin/bash

# set colors
GREEN='\e[1;32m'
BLUE='\e[1;36m'
YELLOW='\e[1;33m'
RED='\e[1;31m'
WHITE='\e[1;37m'

printf "${BLUE} ------------ Running ${GREEN} vagrant -v ${BLUE} command to check Vagrant version ------------ ${WHITE}\n"
vagrant -v
sleep 2

printf "${BLUE} ------------ Running ${GREEN} vagrant box list ${BLUE} command to list all Vagrant boxes available ------------ ${WHITE}\n"
vagrant box list
sleep 2

currentPath=`pwd`
vagrantFile="Vagrantfile"
vagrantFilePath=$currentPath/$vagrantFile

if [ -f "$vagrantFilePath" ]
  then
    echo "$vagrantFile already exists!"
    echo "Exiting"
fi

# ask user what Vagrant box should be installed
printf "${YELLOW} Please type the name of Vagrant box you would like to create. eg: ${GREEN} ubuntu/trusty64 ${WHITE}\n"
read vagrantBoxName

printf "${BLUE} ------------ Running ${GREEN} vagrant init $vagrantBoxName ${BLUE} command to create ${GREEN} $vagrantBoxName ${BLUE} Vagrant box ------------ ${WHITE}\n"
vagrant init $vagrantBoxName
sleep 5
printf "
  ${RED} ------------ Please add following to Vagrantfile ------------

  ${BLUE}config.vm.network :forwarded_port, guest: 3000, host: 3000

  ${RED} ------------ Please update Vagrantfile with following (optional) ------------

  ${BLUE}config.vm.provider 'virtualbox' do |vb|
    # Display the VirtualBox GUI when booting the machine
    # vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = '2048'
  end
\n"

# ask user if validate Vagrant file
printf "${YELLOW} Would you like to validate syntax of Vagrantfile (y/n)? ${WHITE}\n"
read validateVagrantfile

if [ "$validateVagrantfile" == "y" ]
  then
    printf "${BLUE} ------------ Running ${GREEN} vagrant validate ${BLUE} command to check vagrantfile syntax ------------ ${WHITE}\n"
    vagrant validate
elif [ "$validateVagrantfile" == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi

# ask user if proceed with running vagrant
printf "${YELLOW} Would you like to continue to run Vagrant (y/n)? ${WHITE}\n"
read runVagrant

if [ "$runVagrant" == "y" ]
  then
    printf "${BLUE} ------------ Running ${GREEN} vagrant up ${BLUE} command to start Vagrant ------------ ${WHITE}\n"
    vagrant up
    printf "${BLUE} ------------ Running ${GREEN} vagrant status ${BLUE} command to check if Vagrant is running ------------ ${WHITE}\n"
    vagrant status
elif [ "$runVagrant" == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi


# get Vagrant state (running, saved, not_created, poweroff ... )
vagrantStatus=`vagrant status --machine-readable | grep ",state," | egrep -o '([a-z]*)$'`

# ask user to ssh only if vagrant is running
if [ "$vagrantStatus" == "running" ]
  then
    # ask user if ssh to vagrant
    printf "${YELLOW} Would you like to ssh to Vagrant (y/n)? ${WHITE}\n"
    read sshVagrant

    if [ "$sshVagrant" == "y" ]
      then
        printf "${BLUE} ------------  Running ${GREEN} vagrant ssh ${BLUE} command to shh to Vagrant ------------ ${WHITE}\n"
        vagrant ssh
    elif [ "$runVagrant" == "n" ]
      then
        echo "You have answered No, exiting!"
    else
        echo "invalid input exiting"
    fi
fi
