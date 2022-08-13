#!/bin/bash

# Liest den input vom User in die Variable domain 
read -p "Bitte Domains eingeben: " -a domain

#  for Schleife von 1 bis 10
#for i in $(seq 1 10)
 # führt die for-schleife solang aus, wie es Einträge in der array ist.
for i in ${domain[@]}
do
	#zeit=$(date +%H:%M:%S)
        #echo "[+] ${i} ${zeit}"
	#sleep 2
	
	# MX Record der Domain anzeigen
	host -t MX ${domain}
	# alternative 
	dig -t MX ${domain}
	# IP Adresse der Domain anzeigen
	#host ${domain} | grep "has address" | cut -d " " -f4
	# IP in eine Variable bringen
	domainip=$(host ${domain} | grep "has address" | cut -d " " -f4)
	#domainip = "8.8.8.8"
	echo "IP $domainip "
	host ${domainip}
done


