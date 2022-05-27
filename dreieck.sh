#!/bin/bash


if [ $# -eq 0 ]
then
        echo Parameter leer
        exit 1

elif [[ ! "$1" =~ ^[0-9]+$ ]]
then
        echo Bitte geben Sie eine Zahl ein >&2
        exit 2

else

for ((zahl=1; zahl<=$1; zahl++))
 do	
	for ((zahl1=1; zahl1<=$zahl; zahl1++))
	do
		#echo $anzahl	
		echo -n \*
	#	continue
	done
	echo
 done
fi

