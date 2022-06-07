#!/bin/bash

# Prüft ob Parameter vorhanden sind. Exit Code 

if [ $# -ne 2 ]
then
       echo "Es wurden zuwenige Parameter eingegeben" >&2
       exit 1

fi
suche=$1
file=$2
if [ ! -f $file ] ;then
	echo "Datei nicht gefunden"
	exit 1
fi

zeilennr=0
	while read balade
	do
          if [[ $balade == *${suche}* ]]
		then
                       ((zeilennr++))
                          echo $balade
          fi

	done <$file

	echo $balade
