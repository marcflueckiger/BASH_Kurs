#!/bin/bash

# Variablen einlesen von Benutzer
read -p "Erste Zahl: " zahl1
read -p "Zweite Zahl: " zahl2

# einfache Ausgabe
echo "${zahl1}"
echo "${zahl2}"

let summe=zahl1+zahl2
# echo $summe


func_groesserAls(){

# Wenn, dann, sonst
if (( ${zahl1} > ${zahl2}  )); then

	echo "${zahl1} ist grösser als ${zahl2}"

elif (( ${zahl1} == ${zahl2} )); then

	echo "${zahl1} ist gleich gross wie ${zahl2}"

else
	echo "${zahl1} ist kleiner als ${zahl2}"
	echo "Summe ist: " $summe

fi
}

func_addition(){
	echo "Summe ist: " ${summe}
}
# Funktionsaufruf
func_groesserAls
func_addition





