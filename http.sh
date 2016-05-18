#!/bin/bash
sudo su -
yum update -y
yum install -y httpd php
service httpd start
chkconfig httpd on
groupadd www
usermod -a -G www ec2-user
chown -R root:www /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} +
find /var/www -type f -exec chmod 0664 {} +
cd /var/www/html
echo "Automation for the People" > index.html 
