#!/bin/bash

echo "Eingabe $1"
a=$1
b=$2

# Berechnet den Modulo-Wert/Rest
c=$((a%2))

# Prüft ob C = 0 ist. Für eine Gerade zahl
if [ $c -eq 0 ]
then
	echo "Zahl ist gerade"
else
	echo "zahl ist ungerade"
fi
