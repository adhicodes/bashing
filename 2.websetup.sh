#!/bin/bash
### This Scripts is for setting up the website using tooplate.com ###
echo " Welcome to Website Setup"

echo "###############################################################"
echo " Installing Dependencies"
echo "###############################################################"
sudo yum install httpd wget unzip zip -y 

echo "###############################################################"
echo " Creating the temporary Directory"
echo "###############################################################"
mkdir /tmp/webfiles
cd /tmp/webfiles

echo "###############################################################"
echo "Starting HTTPD srevice"
echo "###############################################################"
sudo systemctl start httpd
sudo systemctl enable httpd

echo "################################################################"
echo "Getting the URL from tooplate.com and copying the files to /var/www/html"
echo "###############################################################"
wget https://www.tooplate.com/zip-templates/2098_health.zip 
unzip 2098_health.zip 
sudo cp -r 2098_health/* /var/www/html

echo "###############################################################"
echo "Restarting the service"
echo "###############################################################"
sudo systemctl restart httpd
sudo systemctl status httpd
