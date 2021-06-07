#!/bin/bash

clear

printf 'Starting LightningSkript Installation Script...\n'

cd ~

sleep 3



if [[ $OS_UNSUPPORTED == 1 ]]; then

  sleep 5
  printf "\n\n\nSorry for the inconvenience\n"

fi





printf '\n\n'
read -p "Are you ready to install LightningSkript (y/n): " yn
case $yn in
    [Yy]* ) echo "Great! Starting initialization process now...";sleep 2;clear;;
    [Nn]* ) clear;exit 1;;
    * ) echo "Please answer y/n";;
esac

sleep 1

printf '\n\n*****\nInitializing and Starting LightningSkript CLI Installer\n*****'
printf '\n\nThis could take a while'
sleep 3

apt update
apt install php
apt install wget
apt install figlet
wget https://raw.githubusercontent.com/LSkript/LSkript/main/install.php
chmod +x install.php
./install.php
rm install.php

# wget

# sleep 3
