#!/bin/bash

# Liest den input vom User in die Variable domain 
read -p "Domains: " -a domain

#  for Schleife von 1 bis 10
#for i in $(seq 1 10)
 # führt die for-schleife solang aus, wie es Einträge in der array ist.
for i in ${domain[@]}
do
	zeit=$(date +%H:%M:%S)
        echo "[+] ${i} ${zeit}"
	sleep 2
done


