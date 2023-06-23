#!/bin/bash

# download the latest version of Apache Maven
wget https://dlcdn.apache.org/maven/maven-3/3.9.0/binaries/apache-maven-3.9.0-bin.tar.gz

# extract the downloaded archive
tar xzvf apache-maven-3.9.0-bin.tar.gz

# move the extracted files to /opt directory
sudo mv apache-maven-3.9.0 /opt/

rm apache-maven-3.9.0-bin.tar.gz -y

# create a symbolic link for maven executable file
sudo ln -s /opt/apache-maven-3.9.0/bin/mvn /usr/local/bin/mvn

# verify the installation
mvn -version

echo "The mvn has been configured"