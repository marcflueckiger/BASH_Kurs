#!/bin/bash

endung="${1}"
quelle="${2}"
ziel="${3}'"
counter=0

if [ $# -ne 3 ];then
	echo usage: collect.sh Endung Quell-Verzeichnis Ziel-Verzeichnis
	exit 1

fi

if ! [ -d ${quelle} ]
then
	echo Das Verzeichnis $quelle existiert nicht >&2
	exit 2
fi 
# Fehlerprüfung. Wenn Ziel nicht exisitiert, wird es erstellt
if ! [ -d ${ziel} ]
then
	mkdir ${ziel}
fi
# Setzen des Trennzeichens auf NL, damit Leerschläge nicht beatet werden
IFS=$'\n'

# Suche nach Datei in angegebene Quelle
for file in $(find ${quelle} -name "*$endung" )
do
	echo $file
	#Kopiert Files nach Ziel
	cp $file ${ziel}
	((counter++))
done

# Trennzeichen wieder auf ihren ursprünglichen Wert zurücksetzen
IFS=$' \t\n'

echo "Es wurden $counter Dateien kopiert"





