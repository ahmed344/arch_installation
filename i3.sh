#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo pacman -S --noconfirm xorg xorg-xrandr arandr xorg-xinit mesa i3 i3status i3blocks i3lock dmenu terminator picom dunst polkit lxsession lxappearance xbindkeys udiskie udisks2 wget htop pcmanfm gimp vlc firefox thunderbird rofi feh geany materia-gtk-theme papirus-icon-theme ttf-font-awesome ttf-ubuntu-font-family ttf-droid ttf-dejavu 

sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
# sudo pacman -S xorg-xdm
# sudo systemctl enable xdm.service
# echo “exec i3” > ~/.xsession
# chmod +x ~/.xsession

# sudo pacman -S tlp tlp-rdw
# sudo systemctl enable tlp.service
# sudo systemctl start tlp.service
