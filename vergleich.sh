#!/bin/bash

# Zwei ganze Zahlen als Parameter akzeptiert
# Gibt aus, ob die 1. Zahl kleiner als, grösser als oder gleich der 2. zahl ist.

# Gibt Parameter aus
#echo "Eingegebene Zahlen: "$1" und "$2

# Prüft ob nur zwei Parameter eingegeben wurden
if [ ! $# -eq 2 ] 
then
	echo Bitte zwei zahlein eingeben

# Prüft ob Parameter 1 ein Ganzzahl ist
elif ! [[ $1 =~ ^[0-9]+$ ]] 
	then
		echo $1 ist keine ganze Zahl
# Prüft ob Parameter 2 eine Ganzzahl ist
elif ! [[ $2 =~ ^[0-9]+$ ]]
	then
		echo $2 ist keine ganze Zahl
	else
# Vergleich die Zwei Parameter und gibt das Ergebnis aus
	if [ $1 -eq $2 ]
	then
		echo $1 ist gleich $2
	elif [ $1 -lt $2 ]
	then
		echo $1 ist kleiner als $2
	elif [ $1 -gt $2 ]
	then
		echo $1 ist groesser als $2

	fi
fi
