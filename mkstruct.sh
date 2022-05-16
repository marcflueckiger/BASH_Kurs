#!/bin/bash

#Ein Dozent möchte imer wieder folgende Verzeichnisstruktur für einen Kurs anlegen

#Fragt nach dem Namen. Kann auch mit Leerzeichen geschrieben werden.
IFS= read -r -p "Kursname eingeben: " KURSNAME



# Prüft ob Kursname leer ist, wenn ja wird Kurs als Name definiert
if [ ! "$KURSNAME" ]
then
	KURSNAME=Kurs
fi
#Exportiert die Variable
export KURSNAME

#Erstellt Struktur
#mkdir ${KURSNAME:="Kurs"}
#prüft ob Ordner schon gibt
if [ ! -e "${KURSNAME}" ]
then
	mkdir "${KURSNAME}" >>logfile.txt 2>&1
	cd "$KURSNAME" > /dev/null 2>&1
	mkdir block1 > /dev/null 2>&1
	cd block1 > /dev/null 2>&1
	mkdir aufgaben > /dev/null 2>&1
	mkdir loesungen > /dev/null 2>&1
	cd .. > /dev/null 2>&1
	cp -r block1 block2 > /dev/null 2>&1
	cp -r block1 block3 > /dev/null 2>&1
	cp -r block1 block4 > /dev/null 2>&1
	cp -r block1 block5 > /dev/null 2>&1
	cd .. > /dev/null 2>&1


# Gib Kursname aus
	echo "${0#/*} wurde ausgeführt"
	echo "$(date) -  Kurs $KURSNAME angelegt" >>logfile.txt 2>&1

	ls -l --color=auto $KURSNAME
	exit 0
# Gibt Fehler aus, falls Verzeichnis exisiert
else
	echo Verzeichnis Existiert bereits 
	exit 1
fi

