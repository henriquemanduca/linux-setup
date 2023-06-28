#!/bin/bash

# Install necessary packages
sudo apt-get install -y curl

curl -o postman.tar.gz https://dl.pstmn.io/download/latest/linux64
tar -xzf postman.tar.gz

sudo mv Postman /opt/postman
sudo ln -s /opt/postman/Postman /usr/bin/postman

# Shortcut creation
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
# Before v6.1.2
# Icon=/opt/postman/resources/app/assets/icon.png
Icon=/opt/postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

rm postman.tar.gz

echo "Postman installation completed"
