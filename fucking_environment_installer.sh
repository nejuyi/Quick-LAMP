#!/bin/bash

clear
echo 'What´s up mother fu***r!! LET´S WORK!!'

echo 'Weŕe going to install:'
echo '-----------------------------------------------------------------------------------'
echo ''
echo 'LAMP'
echo 'Vim'
echo 'Sublime Text'
echo 'Chromium Browser' 
echo 'Spotify client'
echo 'Telegram'
echo 'Fonts hack ttf'
echo 'Unity tweak tool'
echo 'Psensor'
echo 'Git & Git Flow'
echo 'NodeJS'
echo 'Built Essential'
echo 'Keepassx'
echo 'Xclip'
echo ''
echo '-----------------------------------------------------------------------------------'
echo ''
echo ''

sudo apt update && sudo apt upgrade

sudo apt-get install apache2 php7.0 mysql-server php7.0-mysql php7.0-gd php7.0-xml mysql-workbench libapache2-mod-php7.0



#VIM installer
 sudo apt-get instal vim


# #SUBLIME TEXT INSTALLER
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text


#CHROMIUN BROWSER
sudo apt-get install chromium-browser

#SPOTIFY INSTALLER
# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# 3. Update list of available packages
sudo apt-get update
# 4. Install Spotify
sudo apt-get install spotify-client


# TELEGRAM INSTALLER
sudo add-apt-repository ppa:atareao/telegram
sudo apt-get update
sudo apt install telegram


sudo apt-get install fonts-hack-ttf

sudo apt-get install unity-tweak-tool

sudo apt-get install psensor

sudo apt-get install git
sudo apt-get install git-flow

sudo apt-get install curl

#NODEJS INSTALLER
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

#KEEPASSX
sudo apt-get install keepassx
#Xclip
sudo apt-get install xclip

mkdir ~/.ssh
chmod 700 ~/.ssh
cd ~/.ssh
ssh-keygen -t rsa
cd ~


sudo apt-get autoremove
sudo apt-get update
