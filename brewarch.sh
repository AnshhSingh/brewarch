#!/bin/bash
user=$(whoami)
sudo pacman -S base-devel
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo '$(eval) "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$user/.bash_profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
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
