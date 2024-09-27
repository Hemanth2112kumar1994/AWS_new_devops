#!/bin/bash

#Install Apache
sudo yum install httpd -y
sudo systemctl start httpd

#Change ownership of html directory to customize test page
cd /var/www/html
sudo chown -R $USER /var/www/html

#Add our text to custom test page
sudo echo "<html><h1>Project Complete!</h1></html>" > index.html
