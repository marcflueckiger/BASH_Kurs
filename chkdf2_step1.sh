#!/bin/bash
#Ausgabe
filesystemtest='/'
schwellwert=1

#while read mountpoint prozent
#do

ispct=`df -k  $filesystemtest --output=pcent | tr -d '%' | tail -n+2`
if [ $ispct -gt $schwellwert ]
then
     echo "Alarm: $filesystemtest ist zu $ispct% voll. Schwellwert: $schwellwert"
fi

#pct=$(df -h  $fylesystem --output=pcent | tr -d '%' | tail -n+2)
#done < chkdf.cfg
# Teil1: Config File chkdf.cfg lesen und assoziatives Array füllen
#eclare -A confarray
# Das File chkdf.cfg hat zwei Spalten: mountpoint und Schwellwert
#hile read key value
#o
    # In key steht der mountpoint, in value der Schwellwert
#   confarray[$key]=$value
#one < chkdf.cfg

# Teil2: for-schleife über alle Array-Keys
#or mountpoint in ${!confarray[@]}
#o
    # Erstmal nur testen, ob der Inhalt des Arrays stimmt
#   echo Mountpoint: $mountpoint Schwellwert: ${confarray[$mountpoint]}
#one

# tail -n+2
# ab der zweiten Zeile ausgeben

# tr eretzt Zeichen
# % mit leer

