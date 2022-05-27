#!/bin/bash

# Prüft ob Parameter vorhanden sind. Exit Code 2

if [ $# -eq 0 ]
then
        echo "Es wurde kein Parameter eingegeben" >&2
        exit 1

# Schreibt den Namen des Scripts ohne ./ und die Anzahl der Parameter raus
else

zeilennr=0
	while read balade
	do
          if ! [ $balade ==  '#' ]
		then
                         ((zeilennr++))
                          echo $zeilennr: $balade
          fi

	done <$1

	echo $Balade
fi
