#!/bin/bash

# Installing Dependecies
echo "#########################"
echo "Installing packages."
echo "#########################"
sudo yum install wget unzip httpd -y > /dev/null
echo


# Start & Enable Service
echo "#########################"
echo "Start & Enable HTTPD Service" 
echo "#########################"
systemctl start httpd
systemctl enable httpd
echo

# Creating Temp Directory
echo "#########################"
echo "Starting Artifact Deployment" 
echo "#########################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip
unzip 2098_health.zip > /dev/null
cp -r 2098_health/* /var/www/html/

# Bounce Service
echo "#########################"
echo "Restarting HTTPD Service" 
echo "#########################"
systemctl restart httpd
echo

# Clean Up
echo "#########################"
echo "Removing Temporary Files"
echo "#########################"
rm -rf /tmp/webfiles
echo

systemctl status httpd
echo
