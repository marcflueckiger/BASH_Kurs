#!/bin/bash
#Ausgabe
#set -x
filesystemtest='/'
schwellwert=1
declare -A confarray
configfile=chkdf.cfg

source /home/marc/scripts/lib/math_functions
#is_int() {
#    if [ "$1" -eq "$1" ] 2>/dev/null
#    then
#        return 0
#    else
#        return 1
#    fi
#}
# Liest configfile und lädt dies in ein Assoziative Array
read_cfg() {
while read key value
do
    confarray[$key]=$value
done < $configfile
}
read_cfg

do_df() {
for fs in ${!confarray[@]}
do

ispct=$(df --output=pcent $fs | tr -d '%' | tail -n+2)
	if ! is_int ${confarray[$fs]};then
        	echo "Der gemessene Wert ist keine Zahl" 
	else  
    
	echo "Alarm: $fs ist zu  $ispct% voll. Schwellwert: ${confarray[$fs]}"
 fi

done

#for fs in ${!confarray[@]}
#do
#	ispct=$(`df --output=pcent $fs | tr -d '%' | tail -n+2`)
#	if [ $ispct -gt ${confarray[$fs]} ]
#	then
#	echo "Alarm: $fs ist zu $ispct% voll. Schwellwert: ${confarray[$fs]}"
#	fi
#done
}
do_df
#spct=`df -k  $filesystemtest --output=pcent | tr -d '%' | tail -n+2`
#while read filesystem schwellwert
#do
#if [ $ispct -gt $schwellwert ]
#then
#     	echo "Alarm: $filesystemtest ist zu $ispct% voll. Schwellwert: $schwellwert"
#	fi
#done<chkdf.cfg
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

