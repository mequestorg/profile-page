#!/bin/bash
# AMI: Use Amazon Linux
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd

# Download and unzip your HTML app
wget https://mqbootcamp.blob.core.windows.net/web/profile-main.zip
unzip profile-main.zip

# Move your app to the web server's document root
sudo mv profile-main/* /var/www/html/
