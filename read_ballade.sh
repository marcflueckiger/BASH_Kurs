#!/bin/bash

# Prüft ob Parameter vorhanden sind. Exit Code 2
if [ $# -eq 0 ]
then
# 
	read -p "Balade z.B: 'John_Maynard.txt' eingeben: " file

else
	file=$1
fi

if [ ! -f $file ]
then
	echo "Die Datei $file existiert nicht"
	exit 1
fi 

zeilennr=0
while read balade
do
	if [[ ! $balade =~ ^# ]] 
	then
		((zeilennr++))
		echo "$zeilennr: $balade"
	fi	
	done <$file

#printf "%10s" $balade
#echo $balade

