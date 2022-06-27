#!/bin/bash
# Name:              aufgabe-6.sh
# Aufgabe:           Schreiben Sie eine Funktionsbibliothek mit einer Funktion und ein Script,
#                    das die Funktion aus der Bibliothek benutzt. Die Anforderungen sind:
# Hauptfunktion:     1. Die Funktion prüft, ob das 1. Argument der Funktion ein Verzeichnis ist, 
#                       in dem der Benutzer Dateien anlegen darf. Wenn ja, gibt die Funktion
#                       den Wert 0 zurück, wenn nein etwas anderes.
#                    2. Die Funktion steht in einer Datei im Verzeichnis /home/student/loesungen/lib
#                    3. Im Script wird diese Funktion nacheinander für alle Argumente des Scripts
#                       aufgerufen.
#                    4. Das Script macht für jedes Argument eine Ausgabe in der Art
#                       "<verzeichnisname>: create file(s) permitted"
#                       oder
#                       "<verzeichnisname>: create file(s) not permitted"
#                    5. Das Script kann beliebig viele Argumente/Parameter verarbeiten
#
# Beispiel:          $ bash aufgabe-6.sh  $HOME / /etc /tmpn
#                    /Users/jochenreinholdt: create file(s) permitted
#                    /: create file(s) not permitted
#                    /etc: create file(s) not permitted
#                    /tmp: create file(s) permitted
#                    $
#
# Fehlerbehandlung:  Keine
# Einschränkungen:   1. Benennen sie diese Datei nicht um. 
#                    2. Verwenden Sie keine andere Shell als /bin/bash
# ******************** Ihre Lösung: ********************

