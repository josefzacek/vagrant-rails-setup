#!/bin/bash
echo "------------ CHECK VAGRANT VERSION ------------"
vagrant -v
sleep 2

echo "------------ LIST ALL BOXES AVAILABLE ------------"
vagrant box list
sleep 2

currentPath=`pwd`
vagrantFile="Vagrantfile"
vagrantFilePath=$currentPath/$vagrantFile

if [ -f "$vagrantFilePath" ]
  then
    echo "$vagrantFile already exists!"
    echo "Exiting"
else
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
fi
