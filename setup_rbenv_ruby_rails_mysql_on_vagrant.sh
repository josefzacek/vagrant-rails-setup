#!/bin/bash

# set colors colors
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
read -p "Please type the name of Vagrant box you would like to create. eg: ubuntu/trusty64 " vagrantBoxName

echo "Creating $vagrantBoxName Vagrant box"
echo "------------ INIT VAGRANT ------------"
vagrant init $vagrantBoxName
sleep 5
echo $'
  <<<<< -- Please add following to Vagrantfile -- >>>>>

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  <<<<< -- Please update Vagrantfile with following (optional) -- >>>>>

  config.vm.provider "virtualbox" do |vb|
  # Display the VirtualBox GUI when booting the machine
  # vb.gui = true
  
  # Customize the amount of memory on the VM:
    vb.memory = "2048"
  end
'
  
# ask user if proceed with running vagrant
read -p "Would you like to continue to run Vagrant (y/n)?" runVagrant

if [ "$runVagrant" == "y" ]
  then
    vagrant up
    echo "------------ CHECK IF VAGRANT IS RUNNING ------------"
    vagrant status
elif [ "$runVagrant" == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi

# ask user if ssh to vagrant
read -p "Would you like to ssh to Vagrant (y/n)?" sshVagrant

if [ "$sshVagrant" == "y" ]
  then
    echo "------------ RUNNING vagrant ssh command ------------"
    vagrant ssh
elif [ "$runVagrant" == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi
