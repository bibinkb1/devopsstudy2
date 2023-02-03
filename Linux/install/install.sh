#!/bin/bash                                                                     
apt-get update
sudo apt update && sudo apt upgrade -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb\
 -P /tmp
sudo apt install /tmp/chrome-remote-desktop_current_amd64.deb -y
sudo snap refresh
sudo snap install zoom-client
sudo snap install vlc
sudo apt-get install net-tools -y
sudo apt install network-manager-openvpn-gnome -y
sudo apt install build-essential -y
sudo apt install vim -y
sudo apt install git -y
#etc
