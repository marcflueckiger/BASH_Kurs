#!/bin/bash


# Prüfen ob Parameter eingegeben wurde
if [ $# -eq 0 ]
then
	echo Parameter leer
	echo Kühlschrank leer 1
# Prüfen ob Parameter eine Zahl ist
elif [[ ! "$1" =~ ^[0-9]+$ ]]
then
	echo Keine Zahl $1
#	echo "Es wurde kein Parameter eingegeben" >&2
#	exit 1

# Schreibt den Namen des Scripts ohne ./ und die Anzahl der Parameter raus
else
#	echo "Name: " ${0#*/}
	echo "Anzahl Paramter: $#"

# Mit dieser Schleife werden alle Parameter rausgeschrieben
	while [ $1 ]
#	while [ $1 -gt 1 ]
	do
		echo Falschen Bier im Kühlschrank
		((c--))
		echo Parameter $c: $1
		echo Kühlschrank leer 2
		shift
	done
	echo Kühlschrank leer 3
fi
