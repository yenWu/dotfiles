#!/bin/bash

# Maually upgrate vscode when new version release

# Refer to https://askubuntu.com/questions/833449/how-to-update-vs-code-on-ubuntu
wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O /tmp/code_latest_amd64.deb
sudo dpkg -i /tmp/code_latest_amd64.deb
