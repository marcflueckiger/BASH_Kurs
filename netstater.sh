#!/bin/bash

read -p "Port eingeben: " port

netstater() {
while true
do

	clear
	# Variable muss mit $ gekennzeichnet werden. 
	netstat -an | grep :${port}
	#netstat -an | grep :port
	echo ""

	# echo wurde nicht beendet " hat gefehlt 
	echo -e "\033[31mAbbruch mit CTRL+C\033[0m"
	# echo -e "\033[31mAbbruch mit CTRL+C\033[0m
	sleep 1

# Whileschleife wird nicht beendet, done hat gefehlt.
done

}

#Funktionaaufruf
netstater
