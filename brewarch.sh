#!/bin/bash
sudo pacman -S base-devel
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
[ -d /home/linuxbrew/.linuxbrew ] && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew doctor
brew config
echo You may have reboot to start using brew properly
