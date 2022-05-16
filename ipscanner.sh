#!/bin/bash

#read -p "Ip Adresse: " IP
#read -p "Startadresse: " Start
#read -p "Endadresse: " ENDE

#if [[ ${IP} == "" ]] || [[ ${START} == "" ]] || [[ ${ENDE} == "" ]]
if [[ $1 == "" ]] || [[ $2 == "" ]] || [[ $3 == "" ]]
then

        echo "falsche Eingabe"
        echo "Beispiel: 172.30.10 190 200"
	#echo "IP: 172.30.10"
	#echo "Satrt: 190"
	#echo "Ende: 200"
else
        echo "Scan läuft..."

        #for i in `seq ${START} ${ENDE}`; do ping ${IP}.$i -c1 | grep "64 bytes" | cut -d " " -f4 | cut -d ":" -f1 | nslookup ${IP}.$i | grep "name" ; done
        for i in `seq ${2} ${3}`; do ping ${1}.$i -c1 | grep "64 bytes" | cut -d " " -f4 | cut -d ":" -f1 | nslookup ${1}.$i | grep "name" ; done 
        echo "fertig"
fi
