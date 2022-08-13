#!/bin/bash

<<komm
echo '$@ '$@
echo '$* '$*
echo '$? '$?
echo '$# ' $#
echo '$0 '$0
komm

echo "Quelle angeben: "
while read quelle
do
if [ -e $quelle ]; then
	echo Quelle existiert
	if [ -w $quelle ];then
		echo Rechte vorhanden
		
#	if [ -d $quelle ];then
#		echo Es ist ein Ordner
#		qtype="ordner"
#		break
#	else
#		echo Es ist eine Datei
#		qtype="datei"
			break
#	fi
	else
		echo keine Rechte,neue Quelle eingeben: 
		continue
	fi
	break
else
	echo Bitte einen Wert eingeben
	continue
fi
done

echo "Ziel angeben: "
while read ziel
do
if [ -e $ziel ]; then
         echo ziel existiert
         if [ -w $ziel ];then
                 echo Rechte vorhanden

                 if [ -d $ziel ];then
                        echo Es ist ein Ordner
                        ztype="ordner"
			break
                 else
                         echo Bitte einen Ordner angeben
                         continue
                 fi
         else
                 echo keine Rechte, neues Ziel eingeben:
                 continue
         fi
         break
 else
         echo Bitte ein gültiges Ziel angeben
         continue
fi
done

echo Kopieren von $quelle nach $ziel
echo $quelle ist $qtype

if [ -d $quelle ];then
	cp -v -r $quelle $ziel
else
	cp -v $quelle $ziel
fi
