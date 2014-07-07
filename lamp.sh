#!/bin/sh

##################################################
#  A simple script to get LAMP setup on Ubuntu
##################################################

## Updates your machine
sudo apt-get -y update
sudo apt-get -y upgrade

##Apache install
sudo apt-get -y install apache2

##Mysql install and setup
sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation

##PHP install 
sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt php5-curl php5-cli
