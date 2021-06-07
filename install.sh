#!/bin/bash

clear

printf 'Starting LightningSkript Installation Script...\n'

cd ~

sleep 3

printf 'Finding Shell Type...\n'



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


sudo apt install php
sudo apt install wget
sudo apt install figlet
sudo wget https://raw.githubusercontent.com/LSkript/LSkript/main/install.php
sudo chmod +x install.php
sudo ./install.php
sudo rm install.php

# wget

# sleep 3
