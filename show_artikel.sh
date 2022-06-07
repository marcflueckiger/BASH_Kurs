#!/bin/bash
# Ausgabe von Artikel, formatiert

# Fehlerbehebung
if [ $# -eq 0 ]
then
#
        read -p "Datei angeben: " file

else
        file=$1
fi

if [ ! -f $file ]
then
        echo "Die Datei $file existiert nicht"
        exit 1
fi
# Ausgabe

printf "%-20s %6s %10s\n" Artikel Anzahl Preis
echo "#####################################"

while read a b c
do

	printf "%-20s %6d %10.2f %3s\n" $a $b $c "Fr."

done<$file



