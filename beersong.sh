#!/bin/bash


# Fehlerbehandung 1
# Prüfen ob Parameter eingegeben wurde
if [ $# -eq 0 ]
then
	echo Parameter leer
	beer=0
else
	beer=$1
fi

# Prüfen ob Parameter eine Zahl ist
if [[ "$beer" =~ ^[0-9]+$ ]]
then
# Eigentliche Ausgabe
	while [ $beer -gt 0 ]
	do
		if [ $beer -eq 1 ];then
		echo $beer Flasche Bier im Kühlschrank
		echo $beer Flashe Bier
		echo Nimm sie raus
		else
		echo $beer Falschen Bier im Kühlschrank
		echo $beer Flashen Bier
		echo Nimm eine raus
		fi
		echo Trink sie aus
		((beer--))
		
	done
		echo Der Kühlschrank ist leer... 
		exit 0
else
	>&2 echo Bitte eine Nummer eingeben
	exit 1
fi
