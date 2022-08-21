#!/bin/bash
# Name:              aufgabe-5.sh
# Aufgabe:           Schreiben Sie eine Kommandozeile, die folgende Aufgaben erfüllt:
# Hauptfunktion:     1. Prozesse finden, die einen beistimmten String, z.B. "sshd" enthalten.
#                       der String soll in einer Variablen string gespeichert sein
#                    2. Die Prozess-ID des Elternprozesses, die eigene Prozess-ID und 
#                       den Namen des ausgeführten Programms anzeigen (in dieser Reihenfolge)
#                    3. Die Ausgabe ist nach der Prozess-ID des Elternprozesses aufsteigend
#                       sortiert
#
# Fehlerbehandlung:  Keine
# Einschränkungen:   1. Benennen sie diese Datei nicht um. 
#                    2. Verwenden Sie keine andere Shell als /bin/bash
# ****************

proces=$1
ps -eo pid,ppid,cmd --sort pid | grep $proces
