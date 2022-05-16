#!/bin/bash

#Ein Dozent möchte imer wieder folgende Verzeichnisstruktur für einen Kurs anlegen
# Kurs
#	block1
#		aufgaben
#		loesungen
#	block2
#		aufgaben
#		loesungen

read -p "Kursname eingeben: " -a KURSNAME
#export KURSNAME=$
#Fragt ab, ob Variable schon gesetzt ist. V1: Wenn leer, setze Wert. V2. Mit Ausrufezeichen
#If [$KURSNAME]
#then
#	true
#else
#	KURSNAME=Kurs
#fi

if [ ! $KURSNAME ]
then
	KURSNAME=Kurs
fi
export KURSNAME

#mkdir ${KURSNAME:="Kurs"}
mkdir ${KURSNAME}
cd $KURSNAME
mkdir block1
cd block1
mkdir aufgaben
mkdir loesungen
cd ..
cp -r block1 block2
cp -r block1 block3
cp -r block1 block4
cp -r block1 block5

#ls $KURSNAME

