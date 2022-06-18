#!/bin/bash

###########
# Zahl
###########

# Prüft ob nur zwei Parameter eingegeben wurden
if [ ! $# -eq 2 ] 
then
	echo Bitte zwei zahlein eingeben

# Prüft ob Parameter 1 ein Ganzzahl ist
elif ! [[ $1 =~ ^[0-9]+$ ]] 
	then
		echo $1 ist keine ganze Zahl
# Prüft ob Parameter 2 eine Ganzzahl ist
elif ! [[ $2 =~ ^[0-9]+$ ]]
	then
		echo $2 ist keine ganze Zahl
else

echo Script Ausgeführt!

fi

############
# FILE 
############
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

echo $file

#########
# FILE Endung 
########

if [ $1 ]
then
   endung=$1
else
   echo "Es wurde keine File-Endung eingegeben!"
   exit 1
fi
