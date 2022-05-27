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
	waagerecht=$1

	for (( anzahl=1; anzahl<=$waagerecht; anzahl++ ))
	do
    		echo -n \*
	done
	echo
fi
