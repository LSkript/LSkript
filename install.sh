#!/bin/bash

clear

printf 'Starting LightningSkript Installation Script...\n'

cd ~

sleep 3

printf 'Finding Shell Type...\n'

if [[ "$OSTYPE" == "linux-gnu"* ]]; then

  # Linux
  printf "It looks like you are using Linux\nNow installing php-curl for proper compatibility...\n\n";
  sudo apt update
  sudo apt install php-curl

elif [[ "$OSTYPE" == "darwin"* ]]; then

  # macOS
  printf "It looks like you are using macOS";
  MACOS=1

elif [[ "$OSTYPE" == "cygwin" ]]; then

  # POSIX compatibility layer and Linux environment emulation for Windows
  printf "It looks like you are using Windows" ; printf "\nThis operating system is not supported"
  OS_UNSUPPORTED=1

elif [[ "$OSTYPE" == "msys" ]]; then

  # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
  printf "It looks like you are using Windows" ; printf "\nThis operating system is not supported"
  OS_UNSUPPORTED=1

elif [[ "$OSTYPE" == "win32" ]]; then

  # I'm not sure this can happen.
  printf "It looks like you are using Windows" ; printf "\nThis operating system is not supported"
  OS_UNSUPPORTED=1

elif [[ "$OSTYPE" == "freebsd"* ]]; then

  # FreeBSD
  printf "It looks like you are using FreeBSD" ; printf "\nThis operating system is not supported at the moment"
  OS_UNSUPPORTED=1

else

  # Unknown OS
  printf "Sorry\nWe do not recognize this operating system" ; printf "\nIf you are using a Linux distro please report this problem on the LightningSkript GitHub issues page"
  OS_UNSUPPORTED=1

fi



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

sleep 5

clear



if [[ $MACOS == 1 ]]; then

printf '*****\nInstalling Homebrew (This may require you to intervene)\n\n*****\n\n\n'

sleep 3

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

printf '*****\nHomebrew Installed!\n*****'


else


echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> ~/.profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

printf '*****\nInstalling Homebrew (This may require you to intervene)\n\n*****'

sleep 3

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

printf '*****\nHomebrew Installed!\n*****'

fi

sleep 3

printf '\n\n*****\nInitializing and Starting LightningSkript CLI Installer\n*****'
printf '\n\nThis could take a while'


brew install php
brew install wget
brew install figlet
sudo wget https://raw.githubusercontent.com/LSkript/LSkript/main/install.php
sudo chmod +x install.php
sudo ./install.php
sudo rm install.php

# wget

# sleep 3
