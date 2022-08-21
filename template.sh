#!/bin/bash

# kommentare
<<komm
echo '$@ '$@
echo '$* '$*
echo '$? '$?
echo '$# ' $#
echo '$0 '$0
echo '$1 '$1
echo '$2 '$2
echo '$3 '$3

komm

# Operationen
# +, -, *, /, %(Divisionsrest).
# Var+=3|Var=$Var+3 - Erhöhe den Wert von Var mit dem Wert 3
# Var*=3|Var=Var*10 - Multibpliziere den Wert von Var mit 10

# Parameter
# $0 = Pfad und Name
# $1-9 = Positionsparameter
# $# = Anzhal
# $? = Errorcode

# Ganze Zahlen vergleichen
# -eq = equal, -ne, -lt = less than, -gt, -le = less equal, -ge
# test $var1 -gt $var2 | [ $var1 -gt $var2 ]

# Logische Vergleiche mit (())
# ==, !=, >, >=, <, <=
# if (( a == b )); then; echo $a ist gleich $b; fi

# Variante [[ ]] für Zeichenketten
# ==, !=, == muster, =~ regexp
# [[ $kap == ?apite*[0-9]\.[0-9]+$ ]] 
# [[ $va =~ ^[0-9]+$ ]] | ^Beginnt, $Endet, +Mehrere, \.Punk

# Zeichenkette vergleichen 
# = (gleich), != (ungleich), -z (leer), -n (nicht leer)
# ["$var1" = "$var2"] | [ -z "$var" ]

# Alternative: let
# let z=5+10| let m=$z*2
# let rest=$divident%$divisor| let "rest = $divident % $divisor"

# Typeset -i und declare -i
# Bash Variable als Ganzzahl deklarieren
# typeset -i a b c | c=a+b
# declare -i f | f=d*e

# Dateiattribute prüfen
# [ -e $name ] = Existenz
# -f = Datei 
# -d = Verzeichnis  | -x = Ausführbarkeit/Verzeichnis(Zutritt)
# -w = Schreibrecht | -r = Leserechte

# IF / Selektion
# if [ TEST ]; then; fi
# if [ TEST1 ]; then; elif [ Test2 ];then; else; fi

# Kommandoausführung UND ODER
# %% Befehl2 nach erfolgreichem Befehl1 / -a
# || Befehl2 nach nicht erfolgreichem Befehl1 / -o
# if [ $a -eq 9 ] && ([ $b -lt 1 ] || [ $c -eq 0 ])

# Exit Code
# 0 = true / 1 = minor problem / 2 = serious trouble

# While / For / Interation
# while [ BEDINGUNG ];do; done
# Solange ausführen bis Bedingung stimmt


# FORM1 for variable in wort1 wort2;do Anweisung; done
# FORM2 for ((anzahl=1; zahl<10; zahl++));do echo $zahl; done
# Arbeitet eine Liste ab. 
# Wird mit Befehlen verwendet. z.B: Find, ls, cat 
# for datei in $(ls); do echo $datei; done

# SHIFT
# vermindert den Wert $# um 1
# so kann immer mit $1 gearbeitet werden.

# Until
# until [ $zaehler == 0 ]; do echo $zaehler ;let zaehler=$zaehler-1; done
# until [ $zaehler == 0 ]; do echo $zaehler ;let zaehler=$zaehler+1; done

# Break
# for var in $(ls); do if [ "$var" = "source" ]; then echo "Var \"$var\" gefunden ..."; break; fi; echo $var; done

# Continue
# Anweisung Continue lässt Schleife von vorne beginnen.
# siehe zerocontinue.sh

# Read
# read name ; echo $name
# read -p "Name eingeben: " name
# read -s -p "Passwort eingeben " pass

# Datum 
# date +"%Y.%m.%d %H:%M:%S"

