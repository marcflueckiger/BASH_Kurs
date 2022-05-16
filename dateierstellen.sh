#!/bin/bash

#erstelle eine Datei mit Datum als Name

pfad="/home/marc/temp/"
datum=$(date +%d.%m.%y)
zeit=$(date +%H:%M)
Dateiname=$(date +%Y%m%d-%H%M)

# Schreibt Text in Datei
echo "Heute ist der ${datum} und es ist ${zeit}!" >${pfad}${Dateiname}.txt
# Test für Datiename
#echo "test ${Dateiname}"

# Startet Script
#for i in $(seq 1 3600); do echo "Heute ist der ${datum} und es ist ${zeit}" >temp/${Dateiname}.txt ;sleep 300; done

