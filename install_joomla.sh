#!/bin/bash
#Instalar prerrequisitos para Joomla
echo "P@ssw0rd" | sudo -S apt install tasksel -y
sudo tasksel
sudo apt install mysql-server phpmyadmin perl unzip -y
sudo mkdir /var/www/html/joomla
wget https://downloads.joomla.org/cms/joomla3/3-8-5/Joomla_3-8-5-Stable-Full_Package.zip
unzip -d /var/www/html/joomla Joomla_3-8-5-Stable-Full_Package.zip
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
sudo systemctl restart apache2.service 
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Para crear la base de datos usa CREATE DATABASE nombre CHARACTER SET utf8 COLLATE utf8_general_ci;"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Introduce la contraseña de phpMyAdmin"
mysql -u root -p
