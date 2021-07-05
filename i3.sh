#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo pacman -S --noconfirm xorg xorg-xrandr arandr xorg-xdm xorg-xinit mesa i3 i3status i3blocks i3lock dmenu ttf-dejavu polkit lxsession xbindkeys udiskie udisks2 ntfs-3g wget htop pcmanfm gimp vlc firefox thunderbird

echo “exec i3” > ~/.xsession
chmod +x ~/.xsession

sudo systemctl enable xdm.service

# sudo pacman -S tlp tlp-rdw
# sudo systemctl enable tlp.service
# sudo systemctl start tlp.service
