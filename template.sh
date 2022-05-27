#!/bin/bash

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






