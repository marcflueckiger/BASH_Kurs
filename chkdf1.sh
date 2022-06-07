#!/bin/bash
# Ausgabe von Artikel, formatiert

# Fehlerbehebung
if [ $# -eq 0 ]
then
#
        read -p "Prozent angeben: " proc

else
        proc=$1
fi

#Ausgabe
#FELDLISTE ist eine durch Komma getrennte Liste der zu verwendenden Spalten.
#Gültige Feldnamen sind: „source“, „fstype“, „itotal“, „iused“, „iavail“,
#„ipcent“, „size“, „used“, „avail“, „pcent“, „file“ und „target“ (siehe
#Infoseite).

df --output=pcent,target | tr '%' ' ' | tail -n+2 | while read pct_full filesystem
do
    if [ $pct_full -ge $proc ]
    then
        echo "Füllungsgrad von  $filesystem ist $pct_full Prozent"
    fi
done

# tail -n+2
# ab der zweiten Zeile ausgeben

# tr eretzt Zeichen
# % mit leer

