#!/bin/bash
# Prüft ob Parameter vorhanden sind.  

if [ $# -eq 0 ]
then
        echo "Es wurde kein Parameter eingegeben" >&2
        exit 1
fi

file=$1

# Prüft ob Datei existiert.
if [ ! -f $file ]
   then
	echo Datei $file nicht gefunden
		echo meinten sie:
		ls $file*
	exit 1
fi
zeilennr=0

	while read balade
	do
                         ((zeilennr++))
                          echo $zeilennr: $balade
	done <$file

	echo $Balade
	echo $file: $zeilennr Zeilen gelesen
