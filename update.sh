#!/bin/bash

# Installiert die aktuellsten Updates und Upgrades
echo ""
echo "Update und Upgrade"
echo ""
sudo apt update &&  sudo apt upgrade -y && sudo apt dist-upgrade -y

# Säubert das Debian Linux

echo ""
echo "Clean"
echo ""
sudo apt clean
sudo apt autoclean
sudo apt autoremove

# Log erstellen
echo "Ausgeführt am: $(date)" >/home/marc/update.log

