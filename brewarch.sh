#!/bin/bash
sudo pacman -S base-devel
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
[ -d /home/linuxbrew/.linuxbrew ] && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew doctor
brew config
while getopts ":e" option; do
   case $option in
      e) 
         echo "-e is specified" 
         brew install gcc
         brew vendor-install ruby
   esac
done
echo You may have reboot to start using brew properly
