#!/bin/bash


# For Schleife
# Liste einlesen
read -p "Domains eingeben: (google.ch ifa.ch) " -a domain

# Einfache Ausgab 
#cho ${domain[0]}
#eho ${domain[1]}
#cho ${#domain[*]}

# Variable = 0 -  Anzahl inträge in ARRAI -  Variable um ein erhöhen
for (( i=0; i<${#domain[*]}; i++ ))
do
	echo "Wert ${i} = ${domain[ ${i} ]}"
done

