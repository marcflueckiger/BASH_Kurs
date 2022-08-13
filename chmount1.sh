#!/bin/bash
# Ausgabe von Artikel, formatiert

# Fehlerbehebung
if [ $# -eq 0 ]
then

        read -p "Mountpoint angeben: " var

else
        var=$1
fi

# zeigt für einen Mountpunkt wie z.B. /var den Dateisystemtyp
mount | grep " on $var " | cut -d ' ' -f5



