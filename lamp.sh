#!/bin/sh

##################################################
#  A simple script to get LAMP setup on Ubuntu
##################################################

## Updates your machine
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install curl

##Apache install
sudo apt-get -y install apache2

##Mysql install and setup
sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation

##PHP install 
sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt php5-curl php5-cli

##Composer Installation
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

## laravel installation 
wget http://laravel.com/laravel.phar
sudo chmod 755 laravel.phar
sudo mv laravel.phar /usr/local/bin/laravel



#mv -i /etc/php5/conf.d/mcrypt.ini /etc/php5/mods-available/
#sudo php5enmod mcrypt
#sudo service apache2 restart


