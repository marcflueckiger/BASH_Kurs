# !/bin/bash
# Name:              aufgabe-3.sh
# Aufgabe:           Schreiben Sie ein Script, das die folgenden Anforderungen erfüllt:
# Hauptfunktion:     Prüft, ob der Füllungsgrad eines Dateisystems in % einen Schwellenwert
#                    überschreitet. Der Schwellenwert wird als ganze Zahl beim Aufruf übergeben.
#                    Für alle Dateisysteme, die den Schwellenwert überschreiten wird eine
#                    Zeile in der folgende Form ausgegeben:
#                    "<dateisystem> is <belegung-in-prozent>% used - exceeds <schwellenwert>%" 
#                    
# Beispiel:          $ bash aufgabe-3.sh 20
#                    /home is 45% used, exceeds 20%
#                    /var is 61% used, exceeds 20%
#                    $
#
# Fehlerbehandlung:  Es sollen folgende Fehlermöglichkeiten behandelt werden:
#                    1. Dem Script wurde nicht genau 1 Argument übergeben 
#                       Reaktion: Fehlermeldung auf stderr:
#                       usage: aufgabe-3.sh threshold-in-percent
#                       Beenden des Skrips mit Exit-Code 1
#                    2. Das erste Argument ist keine ganze Zahl
#                       Reaktion: Fehlermeldung auf stderr:
#                       usage: aufgabe-3.sh threshold-in-percent
#                       Beenden des Skrips mit Exit-Code 2
#                    
# Einschränkungen:   1. Benennen sie diese Datei nicht um. 
#                    2. Verwenden Sie keine andere Shell als /bin/bash

# ******************** Ihre Lösung: ********************
threshold=$1

# Fehlerbehandlung 1
if [ $# -ne 1 ]; then
    echo "usage: $(basename $0) threshold-in-percent" 1>&2 
    exit 1;
fi

# Fehlerbehandlung 2
if ! [ "$threshold" -eq "$threshold" ]; then
    echo "error: $(basename $0) threshold-in-percent" 1>&2
    exit 2;
fi


df | tail -n +2 | tr -d % | while read s1 s2 s3 s4 pct mountpoint
do
    if [ $pct -gt $threshold ]; then
        echo "$mountpoint is ${pct}% used - exceeds ${threshold}%"
    fi
done

exit 1
# !/bin/bash
# Name:              aufgabe-3.sh
# Anforderungen:     zeigt für einen Mountpunkt wie z.B. /var den Dateisystemtyp an. Beipiel:
# Beipiel Aufruf:    $ ./aufgabe-3.sh /var
#                    ext4
#                    $
# Einschränkungen:   1. Benennen sie diese Datei nicht um.
#                    2. Verwenden Sie keine andere Shell als /bin/bash
# ******************** Ihre Lösung: ********************


# Fehlerbehebung
if [ $# -eq 0 ]
then

        read -p "Mountpoint angeben: " var

else
        var=$1
fi

# zeigt für einen Mountpunkt wie z.B. /var den Dateisystemtyp
mount | grep " on $var " | cut -d ' ' -f5
