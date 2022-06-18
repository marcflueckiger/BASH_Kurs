#!/bin/bash

<<komm
echo '$@ '$@
echo '$* '$*
echo '$? '$?
echo '$# ' $#
echo '$0 '$0
echo '$1 '$1
echo '$2 '$2
echo '$3 '$3

komm
declare -i zahl1
declare -i zahl2
declare -i zahl3

#if [ ! $# -eq 3 ]; then
#echo Bitte 3 Zahlen eineben
#exit 1
#fi

zahl1=$1
zahl2=$2
zahl3=$3

if [ $zahl1 -lt $zahl2 ] 
then
	
	subtotal=$(( zahl1 * zahl2 ))
	echo "$zahl1 * $zahl2 = $subtotal"
else
	subtotal=$(( zahl1 + zahl2 ))
        echo "$zahl1 + $zahl2 = $subtotal"
fi

if [ $subtotal -gt "40" ]
then
	total=$(( subtotal - zahl3 ))
	echo "grösser 40: $subtotal - $zahl3 = $total"

elif [ $subtotal -lt "40" ]
then
	total=$(( subtotal * zahl3 ))
	echo "kleiner 40: $subtotal * $zahl3 = $total"
fi
echo $total

