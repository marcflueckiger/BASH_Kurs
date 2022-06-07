#!/bin/bash
# Ausgabe von Artikel, formatiert

# Fehlerbehebung
if [ $# -eq 0 ]
then
#
        read -p "Prozent angeben: " proc

else
        proc=$1
fi

df >dfout.txt
file=dfout.txt
# Ausgabe

printf "%-20s %10s\n" Verf Eing

while read a b c d e f
do
	if [[ $e == $proc* ]]
	then
	printf "%-20s %10s\n" $e $f
	echo mountpoint $f ist zu mehr als $proc"%" voll
	fi
done<$file



