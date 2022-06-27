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

