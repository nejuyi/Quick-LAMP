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
echo 'Meld ( Merge tool )'
echo 'NodeJS'
echo 'Built Essential'
echo 'Keepassx'
echo 'Xclip'
echo 'GIMP'
echo 'Composer'
echo 'Terminator'
echo '-----------------------------------------------------------------------------------'
echo ''
echo ''

sudo apt update && sudo apt upgrade

sudo apt-get install -y apache2 php7.2 php7.2-mysql php7.2-gd php7.2-xml php7.2-json php7.2-mbstring libapache2-mod-php7.2 mysql-server mysql-workbench 

#VIM installer
 sudo apt-get install -y vim

# #SUBLIME TEXT INSTALLER
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text

sudo apt-get install -y git git-flow

sudo apt-get install -y terminator

sudo apt-get install -y meld

sudo apt-get install -y curl wget php-cli php-zip unzip

#CHROMIUN BROWSER
sudo apt-get install -y chromium-browser

#SPOTIFY INSTALLER
# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# 3. Update list of available packages
sudo apt-get update
# 4. Install Spotify
sudo apt-get install -y spotify-client

# TELEGRAM INSTALLER
sudo add-apt-repository ppa:atareao/telegram
sudo apt-get update
sudo apt install -y telegram

sudo apt-get install -y fonts-hack-ttf

sudo apt-get install -y unity-tweak-tool

sudo apt-get install -y psensor

#NODEJS INSTALLER
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

#KEEPASSX
sudo apt-get install -y keepassx

#Xclip
sudo apt-get install -y xclip

#GIMP
sudo apt-get install -y gimp

#composer
cd ~
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
HASH="$(wget -q -O - https://composer.github.io/installer.sig)"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

sudo apt-get autoremove


