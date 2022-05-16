#!/bin/bash

# Schreibt den Namen des Scripts ohne ./ und die Anzahl der Parameter raus 
echo "Name: " ${0#*/}
echo "Anzahl Paramter:" $#

# Mit dieser Schleife werden alle Parameter rausgeschrieben
while [ $1 ]

do
	((c++))
	echo Parameter $c: $1
	shift
done

#cho "Parameter 1: " $1
#cho "Parameter 2: " $2
#cho "Parameter 3: " $3
#cho "Parameter 4: " $4
