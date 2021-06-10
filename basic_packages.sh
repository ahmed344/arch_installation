#!/bin/bash

pacman -S --noconfirm grub networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel linux-headers alsa-utils pulseaudio bash-completion

grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
