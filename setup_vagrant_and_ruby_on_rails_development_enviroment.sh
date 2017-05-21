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
