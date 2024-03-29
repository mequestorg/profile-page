#!/bin/bash
# Script Name: setup_web_server.sh
# Description: This script automates the setup of a basic web server environment with Apache HTTP Server.
# AMI: Use Amazon Linux  

# The script is intended to be used on an Amazon EC2 instance running Amazon Linux, 

# Update system packages
sudo yum update -y
# The '-y' flag automatically answers yes to any prompts during the update process.

# Install Apache HTTP Server
sudo yum install -y httpd

# Start Apache HTTP Server
sudo systemctl start httpd

# Enable Apache HTTP Server to start on boot
sudo systemctl enable httpd

# Download and unzip HTML app
# Download the HTML app ZIP file
wget https://mqbootcamp.blob.core.windows.net/web/profile-main.zip
# Use wget to download the ZIP file from the specified URL.

# Unzip the downloaded ZIP file
unzip profile-main.zip
# Unzip the downloaded ZIP file to extract its contents.

# Move HTML app to the web server's document root
# Move the contents of the extracted directory to the document root of Apache
sudo mv profile-main/* /var/www/html/
# Move all files and directories inside the 'profile-main' directory to '/var/www/html/',
# which is the default document root for Apache HTTP Server.
