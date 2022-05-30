#!/bin/bash
# Testfile von MF

rechnung=0
echo "Treffen Sie eine Wahl"
select var in "Weggli" "Gipfeli" "Biberli" "Rechnung" "Abschluss"
do
	case $var in
	"Weggli") echo Es wurde Weggli für 1.- ausgewählt 
	((rechnung=$rechnung+1));;
	"Gipfeli") echo Es wurde Gipfeli für 2.- ausgewählt 
	((rechnung=$rechnung+2));;
	"Biberli") echo Es wurde Biberli für 3.- ausgewählt 
	((rechnung=$rechnung+3));;
	"Rechnung") 
	if [ $rechnung ]
	then
		echo Es wurde kein Artikel ausgewählt
		else
		echo Rechnung beträgt $rechnung".-"
	fi
	;;
	"Abschluss")  

	if [ $rechnung ]
        then
                echo Danke für Ihren Einkauf. Sie müssen nichts bezahlen.
                else
                echo Danke für Ihren Einkauf. Bitte bezahlen Sie $rechnung".-"
        fi
	break;;
	*) echo Artikel gibt es nicht


esac
done



