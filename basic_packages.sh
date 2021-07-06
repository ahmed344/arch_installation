#!/bin/bash

pacman -S --noconfirm efibootmgr os-prober grub networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel alsa-utils pulseaudio bash-completion openssh xdg-user-dirs xdg-utils

# grub-install /dev/sda
# grub-mkconfig -o /boot/grub/grub.cfg

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg


systemctl enable NetworkManager
systemctl enable sshd

useradd -m ahmed
usermod -aG wheel,audio,video,optical,storage ahmed
