#!/bin/bash

services() {
local port=""	#Nur lokal in Funktion definierete Variable
local wiki=""	#Nur lokal in Funktion definierte Variable
clear
read -p "Port eingeben (z.B: 443): " -a port
echo -e "\e[1mInformationen aus /etc/services:\e[0m"
if grep -P "\t$port/" /etc/services; then
	wiki=($(grep "\<$port/" /etc/services | cut -d "" -f1))
	echo ""
	echo "Mögliche weiterführende Infos: wikipedia.org/wiki/$wiki"
	echo ""
else
	echo ""
	echo -e "\e[31mKein Eintrag gefunden!\e[0m"
	echo ""
fi
}

# Funktionsaufruf
services

