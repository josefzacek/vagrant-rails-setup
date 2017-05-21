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
  echo "------------ INIT VAGRANT ------------"
  vagrant init ubuntu/trusty64
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
fi
