#!/bin/bash


func_while2() {

i=1

# test = er testet es
#     [      1   <  11    ]
while test ${i} -lt 11 
do

	zeit=$(date +%H:%M:%S)
	echo "[+]  ${i}te while Schlaufe: ${zeit}"
	sleep 2

	# in runden Klammern kann man Mathematische Befehle ausführen
	i=$((i+1))


done


}

# funktionsaufruf
func_while2
