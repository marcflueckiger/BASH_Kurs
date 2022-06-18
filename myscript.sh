#!/bin/bash

# Daten und Uhrzeit anzeigen
echo $(date)
echo " "

# Eingeloggte User anzeigen
who -a
echo " "

# Benutzer begrüssen
echo Hallo $USER

# Prozessnummer des Scripts
echo $$
