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
    printf "${BLUE} ------------  Running ${GREEN} sudo dpkg-reconfigure --priority=low unattended-upgrades ${BLUE} command to enable automatic unattended upgrades  ------------ ${WHITE}\n"
    sudo dpkg-reconfigure --priority=low unattended-upgrades
elif [ $installAutomaticUnattendedUpgrades == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi

# would you like to install htop
printf "${YELLOW} Would you like to run ${GREEN} sudo apt-get install htop ${YELLOW} to install htop (y/n)? ${WHITE}\n"
read installHtop

if [ $installHtop == "y" ]
  then
    printf "${BLUE} ------------  Running ${GREEN} cd / ${BLUE} command to navigate to root folder  ------------ ${WHITE}\n"
    cd /
    sleep 2
    printf "${BLUE} ------------  Running ${GREEN} pwd ${BLUE} command to confirm path  ------------ ${WHITE}\n"
    pwd
    sleep 5
    printf "${BLUE} ------------  Running ${GREEN} sudo apt-get install htop ${BLUE} command to install htop  ------------ ${WHITE}\n"
    sudo apt-get install htop
elif [ $installHtop == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi

# install dependencies needed
printf "${YELLOW} Would you like to run ${GREEN} sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev ${YELLOW} to install dependencies (y/n)? ${WHITE}\n"
read installDependencies

if [ $installDependencies == "y" ]
  then
    printf "${BLUE} ------------  Running ${GREEN} cd / ${BLUE} command to navigate to root folder  ------------ ${WHITE}\n"
    cd /
    sleep 2
    printf "${BLUE} ------------  Running ${GREEN} pwd ${BLUE} command to confirm path  ------------ ${WHITE}\n"
    pwd
    sleep 5
    printf "${BLUE} ------------  Running ${GREEN} sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev ${BLUE} command to install dependencies  ------------ ${WHITE}\n"
    sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
elif [ $installDependencies == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi

# install MySQL database
printf "${YELLOW} Would you like to run ${GREEN} sudo apt-get install mysql-server mysql-client libmysqlclient-dev ${YELLOW} to install MySQL database (y/n)? ${WHITE}\n"
read installMysqlDatabase

if [ $installMysqlDatabase == "y" ]
  then
    printf "${BLUE} ------------  Running ${GREEN} cd / ${BLUE} command to navigate to root folder  ------------ ${WHITE}\n"
    cd /
    sleep 2
    printf "${BLUE} ------------  Running ${GREEN} pwd ${BLUE} command to confirm path  ------------ ${WHITE}\n"
    pwd
    sleep 5
    printf "${BLUE} ------------  Running ${GREEN} sudo apt-get install mysql-server mysql-client libmysqlclient-dev ${BLUE} command to install MySQL database  ------------ ${WHITE}\n"
    sudo apt-get install mysql-server mysql-client libmysqlclient-dev
elif [ $installMysqlDatabase == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi

# setup MySQL user, database and privileges
printf "${YELLOW} Would you like to run ${GREEN} mysql -u root -p ${YELLOW} command to login to MySQL (y/n)? ${WHITE}\n"
read loginToMysql

if [ $loginToMysql == "y" ]
  then
    printf "${BLUE} ------------  Running ${GREEN} cd / ${BLUE} command to navigate to root folder  ------------ ${WHITE}\n"
    cd /
    sleep 2
    printf "${BLUE} ------------  Running ${GREEN} pwd ${BLUE} command to confirm path  ------------ ${WHITE}\n"
    pwd
    sleep 5
    printf "${BLUE} ------------  Running ${GREEN} mysql -u root -p ${BLUE} command to login to MySQL  ------------ ${WHITE}\n
      ${YELLOW} ----- A couple of handy MySQL commands you might need ----- ${WHITE}\n
      ${BLUE} Create MySQL database: ${GREEN} CREATE DATABASE ${RED}database_name${GREEN}; ${WHITE}\n
      ${BLUE} Create user: ${GREEN} CREATE USER '${RED}user_name${GREEN}'@'localhost' IDENTIFIED BY '${RED}password${GREEN}'; ${WHITE}\n
      ${BLUE} Grant user privileges: ${GREEN}GRANT ALL PRIVILEGES ON ${RED}database_name${GREEN} . * TO '${RED}user_name${GREEN}'@'localhost'; ${WHITE}\n
      ${BLUE} Flush privileges to pickup changes: ${GREEN}flush privileges; ${WHITE}\n
      ${BLUE} List all MySQL users: ${GREEN}SELECT User FROM mysql.user; ${WHITE}\n
      ${BLUE} Show privileges for certain user: ${GREEN} SHOW GRANTS FOR '${RED}user_name'@'localhost'${GREEN}; ${WHITE}\n
      ${BLUE} List all databases: ${GREEN} SHOW DATABASES; ${WHITE}\n
      ${BLUE} Exit MySQL shell: ${GREEN} quit;  ${WHITE}\n"

    mysql -u root -p
elif [ $loginToMysql == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi

# install rbenv
printf "${YELLOW} Would you like to run to install ${GREEN}rbenv${YELLOW} (y/n)? ${WHITE}\n"
read installRbenv

if [ $installRbenv == "y" ]
  then
    printf "${BLUE} ------------ Running ${GREEN}cd${BLUE} command to navigate to current user home folder ------------ ${WHITE}\n"
    cd
    sleep 2
    printf "${BLUE} ------------ Running ${GREEN}pwd${BLUE} command to confirm current user home path ------------ ${WHITE}\n"
    pwd
    sleep 5
    printf "${BLUE} ------------ Installing ${GREEN}rbenv${BLUE}, ${GREEN}ruby-build${BLUE}, ${GREEN}rbenv-gem-rehash${BLUE} ------------ ${WHITE}\n"
    git clone git://github.com/sstephenson/rbenv.git .rbenv && printf "${GREEN}rbenv cloned${WHITE}\n" || printf "${RED}rbenv clone failed${WHITE}\n"
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc

    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build && printf "${GREEN}ruby-build cloned${WHITE}\n" || printf "${RED}ruby-build clone failed${WHITE}\n"
    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc


    git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash && printf "${GREEN}rbenv-gem-rehash cloned${WHITE}\n" || printf "${RED}rbenv-gem-rehash clone failed${WHITE}"
    printf "${BLUE} ------------ Running ${GREEN}rbenv${BLUE} to check if rbenv installed ------------ ${WHITE}\n"
    sleep 2
    type rbenv
    printf "${BLUE} ------------ Running${GREEN}rbenv install --list${BLUE} to list all ruby versions available ------------ ${WHITE}\n"
    sleep 2
    rbenv install --list
elif [ $installRbenv == "n" ]
  then
    echo "You have answered No, exiting!"
else
    echo "invalid input exiting"
fi
