#!/bin/bash


# Prüft ob Parameter vorhanden sind. Exit Code 2
#if [ -e ${1} ]
if [ $# -eq 0 ]
then
	echo "usage: ${0#*/} <directory> <directory> ..." >&2
	exit 1

# Schreibt den Namen des Scripts ohne ./ und die Anzahl der Parameter raus
else
	echo "Name: " ${0#*/}
	echo "Anzahl Paramter: $#"
	#echo ${1}
# Mit dieser Schleife werden alle Parameter rausgeschrieben
	#while [ $1 ]
	while [ ${1} ]
# Dateiattribute prüfen
# [ -e $name ] = Existenz
# -f = Datei
# -d = Verzeichnis  | -x = Ausführbarkeit/Verzeichnis(Zutritt)
# -w = Schreibrecht | -r = Leserechte	
	do
	
	if [ -d ${1} ];then
#		echo ${1} does exist
		
		if [ ! -x ${1} ];then
		echo ${1} ls not permitted
		else
		echo ${1} ls permitted
		fi
		if [ ! -w ${1} ];then
		echo ${1} create files not permitted.
		else
		echo ${1} create files permitted.
		fi
	else
		echo ${1} folder does not exist.
		exit 3	
	fi	
	shift
	done
fi
