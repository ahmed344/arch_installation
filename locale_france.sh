#!/bin/bash

ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime

hwclock --systohc

echo "# Locales added by the installation script " >> /etc/locale.gen
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen

echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "LC_ADDRESS=fr_FR.UTF-8" >> /etc/locale.conf
echo "LC_IDENTIFICATION=fr_FR.UTF-8" >> /etc/locale.conf
echo "LC_MEASUREMENT=fr_FR.UTF-8" >> /etc/locale.conf
echo "LC_MONETARY=fr_FR.UTF-8" >> /etc/locale.conf
echo "LC_NAME=fr_FR.UTF-8" >> /etc/locale.conf
echo "LC_NUMERIC=fr_FR.UTF-8" >> /etc/locale.conf
echo "LC_PAPER=fr_FR.UTF-8" >> /etc/locale.conf
echo "LC_TELEPHONE=fr_FR.UTF-8" >> /etc/locale.conf
echo "LC_TIME=fr_FR.UTF-8" >> /etc/locale.conf

#echo "KEYMAP=fr-latin1" >> /etc/vconsole.conf

echo "AHMED" >> /etc/hostname

echo "127.0.0.1		localhost" >> /etc/hosts
echo "::1		localhost" >> /etc/hosts
echo "127.0.1.1		AHMED.localdomain AHMED" >> /etc/hosts
