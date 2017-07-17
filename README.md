# Setup
Create folder to host your project eg `myRailsApp`

    mkdir myRailsApp

Navigate to `myRailsApp` folder

    cd myRailsApp

Clone `setup_vagrant.sh` file used to setup Vagrant

    wget https://raw.githubusercontent.com/josefzacek/vagrant-rails-setup/master/setup_vagrant.sh

Clone `setup_server.sh` file used to setup server

    wget https://raw.githubusercontent.com/josefzacek/vagrant-rails-setup/master/setup_server.sh

(if you are on Mac and do not have `wget` installed, you can install it using `brew install wget` command)

    brew install wget

Run `bash setup_vagrant.sh` command to setup Vagrant

    bash setup_vagrant.sh

Once vagrant is setup and running, cd into /vagrant folder

    cd /vagrant
