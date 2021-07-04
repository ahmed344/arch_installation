#!/bin/bash

#pacman -S --noconfirm linux linux-firmware linux-headers intel-ucode

pacman -S --noconfirm grub networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups hplip alsa-utils pulseaudio bash-completion openssh rsync acpi acpi_call virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g terminus-font

# pacman -S --noconfirm xf86-video-amdgpu
# pacman -S --noconfirm nvidia nvidia-utils nvidia-settings

grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable cups.service
systemctl enable sshd
systemctl enable avahi-daemon
systemctl enable fstrim.timer
systemctl enable libvirtd
systemctl enable firewalld
systemctl enable acpid

# pacman -S --noconfirm tlp
# systemctl enable tlp 

# pacman -S --noconfirm reflector
# systemctl enable reflector.timer

useradd -m ahmed
usermod -aG wheel,audio,video,optical,storage,libvirt ahmed


