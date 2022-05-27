#!/bin/bash


# Prüft ob Parameter vorhanden sind. Exit Code 2
#if [ -e ${1} ]
if [ $# -eq 0 ]
then
	echo "Es wurde kein Parameter eingegeben" >&2
	exit 1

# Schreibt den Namen des Scripts ohne ./ und die Anzahl der Parameter raus
else
	echo "Name: " ${0#*/}
	echo "Anzahl Paramter: $#"

# Mit dieser Schleife werden alle Parameter rausgeschrieben
	#while [ $1 ]
	while [ $# -gt 0 ]
	do
		((c++))
		echo Parameter $c: $1
		shift
	done
fi
