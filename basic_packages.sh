#!/bin/bash

pacman -S --noconfirm grub networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel alsa-utils pulseaudio bash-completion openssh xdg-user-dirs xdg-utils

grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable sshd

useradd -m ahmed
usermod -aG wheel,audio,video,optical,storage ahmed
