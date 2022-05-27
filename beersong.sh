#!/bin/bash


# Fehlerbehandung 1
# Prüfen ob Parameter eingegeben wurde
if [ $# -eq 0 ]
then
	echo Parameter leer

# Fehlerbehandlung 2
# Prüfen ob Parameter eine Zahl ist
elif [[ ! "$1" =~ ^[0-9]+$ ]]
then
	echo Keine Zahl $1

# Eigentliche Ausgabe
else
	while [ $1 ]
	do
		echo Falschen Bier im Kühlschrank
		((c--))
		echo Parameter $c: $1
		echo Kühlschrank leer 2
		shift
	done
	echo Kühlschrank leer 3
fi
