#!/bin/bash
### This Scripts is for setting up the website using tooplate.com ###
echo " Welcome to Website Setup"

# Variable Declaration
PACKAGES="httpd wget unzip zip"
SRV="httpd"
TMPDIR="/tmp/webfiles"
URL="https://www.tooplate.com/zip-templates/2098_health.zip"
ART_NAME="2098_health"

echo "###############################################################"
echo " Installing Dependencies"
echo "###############################################################"
sudo yum install $PACKAGES -y 

echo "###############################################################"
echo " Creating the temporary Directory"
echo "###############################################################"
mkdir $TMPDIR
cd $TMPDIR

echo "###############################################################"
echo "Starting HTTPD srevice"
echo "###############################################################"
sudo systemctl start $SRV
sudo systemctl enable $SRV

echo "################################################################"
echo "Getting the URL from tooplate.com and copying the files to /var/www/html"
echo "###############################################################"
wget $URL 
unzip $ART_NAME.zip 
sudo cp -r $ART_NAME/* /var/www/html

echo "###############################################################"
echo "Restarting the service"
echo "###############################################################"
sudo systemctl restart $SRV
sudo systemctl status $SRV

echo "###############################################################"
echo " Cleaning Up"
echo "###############################################################"
rm -rf  $TMPDIR
ls -ls /var/www/html
