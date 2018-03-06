#!/bin/bash
#Instalar prerrequisitos para Moodle
echo "P@ssw0rd" | sudo -S apt update
sudo apt install tasksel -y
sudo tasksel
sudo apt install mysql-server phpmyadmin perl unzip php7.0-curl php7.0-intl php7.0-zip php7.0-xmlrpc php7.0-soap -y
sudo mkdir /var/www/html/moodledata
wget https://download.moodle.org/download.php/direct/stable34/moodle-latest-34.zip
sudo unzip -d /var/www/html/ moodle-latest-34.zip
sudo chown -R www-data: /var/www
sudo chmod -R 755 /var/www
sudo systemctl restart apache2.service 
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Para crear la base de datos usa CREATE DATABASE nombre CHARACTER SET utf8 COLLATE utf8_general_ci;"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Introduce la contraseña de phpMyAdmin"
mysql -u root -p
