#!/bin/bash
# Testfile von MF

# Prüft ob nur zwei Parameter eingegeben wurden
if [ ! $1 ]
then
        echo eine Sprache eingeben
	exit 1
fi

while getopts defi opt #2>/dev/null
do
case $opt in 
	d) gruss="echo Guten Tag" ;;
	e) gruss="echo Good Day" ;;
	f) gruss="echo Bonjour" ;;
	i) gruss="Boungiorno" ;;	
	*) gruss="Unbekannte Sprache";;
esac
done

	$gruss

