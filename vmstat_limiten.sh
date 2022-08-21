#!/bin/bash
#!/bin/bash     
# Name:              vmstat.sh
# Aufgabe:           Schreiben Sie ein Skript, dass eine beliebige Spalte im Zusammenhang mit 
#                    dem Datum/Zeitstempel analysiert.
#                    
# Hauptfunktion:     Es soll das Kommando vmstat 1 <Anzahl Intervalle> aufgerufen und analysiert werden.
#                    - Mit der Option -c <Spalte> kann die zu analysierende Spalte definiert werden. 
#                      Die Spaltenbezeichnungen sind gemäß der zweiten Zeile bei der Ausgabe von “vmstat”
#                    - Die Analyse kann feststellen, ob ein Wert eine bestimmte Zeit lang überschritten 
#                      oder unterschritten wurde. Eine Überschreitung wird mit –g <Limite> und Unterschreitung 
#                      mit –l <Limite> gesetzt. Die beiden Optionen können nicht gleichzeitig angegeben werden.
#                    - Es soll möglich sein, die Anzahl Zeitintervalle mit der Option –i <Anz> beim Aufruf 
#                      zu bestimmen. Ein Zeitintervall hat immer die Dauer von 1 Sek.
#
# Beispiel:          $ bash vmstat.sh -i 5 -c in -g 320
#
# Fehlerbehandlung:  Es sollen folgende Fehlermöglichkeiten behandelt werden:
#                    1. Wenn keine Optionen eingegeben wurden, soll eine Fehlermeldung erfolgen. Das Script 
#                       wird mit dem Exit-Code 1 beendet
#                    2. Wenn die Optionen -l oder -g ohne -c verwendet wurden, soll eine Fehlermeldung erfolgen. 
#                       Das Script wird mit dem Exit-Code 2 beendet
#                    3. Wird die Optionen -i nicht verwendet, soll der Intervall auf 10 gesetzt werden
#                    4. Wird die Option -c nicht verwendet, sollen alle Spalten angezeigt werden.
#
# Einschränkungen:   1. Verwenden Sie für die Lösung der Aufgabe Array-Variablen
#                    2. Verwenden Sie das Kommando getopts
#                    3. Verwenden Sie keine andere Shell als /bin/bash

# ******************** Ihre Lösung: ********************

#Standardwerte
declare -A s
intervall=10
spalte="all"
c=0
s[r]=0
s[b]=1
s[swpd]=2
s[frei]=3
s[buff]=4
s[Cache]=5
s[si]=6
s[so]=7
s[bi]=8
s[bo]=9
s[in]=10
s[cs]=11
s[US]=12
s[SY]=13
s[ID]=14
s[WA]=15
s[st]=16

check_limit(){
      if [ $modus = "unter" ]
      then
	 if [ ${werte[$w]} -le $limit ]
         then
            echo ${werte[$w]}
	 fi
      fi
      if [ $modus = "über" ]
      then
	 if [ ${werte[$w]} -ge $limit ]
         then
            echo ${werte[$w]}
	 fi
      fi
}
# Optionen auf der Kommandozeile auswerten
while getopts c:i:l:g: opt 2>/dev/null
do
    case $opt in
        c) spalte=$OPTARG
           ;;
        i) intervall=$OPTARG
           ;;
        l) modus=unter
	   limit=$OPTARG
           ;;
        g) modus=über
	   limit=$OPTARG
           ;;
        ?) echo "Unbekannte Option"
           exit 1
           ;;
    esac
done

if [ $modus ]
then
	if [ $spalte = "all" ]
	then
	   echo "Option -c fehlt"
	   exit 2
	fi
fi

# Die Zeilen der Ausgabe von vmstat einlesen
vmstat 1 $intervall | while read zeile
do
   ((c++))
   if [ $c -eq 1 ]
   then
      continue
   fi
   werte=($zeile)
   if [ $spalte = "all" ]
   then
      echo ${werte[*]}
   else
      w=${s[$spalte]}
      if [ ${werte[$w]} -eq ${werte[$w]} ] 2>/dev/null
      then
         check_limit
      else
            echo ${werte[$w]}
      fi
   fi
done



exit 2

#MaFl
#20.06
# Fehlerbehebung
echo $0
#Standardwerte definieren
declare -A s
intervall=10
spalte="all"
c=0
s[r]=0
s[b]=1
s[swpd]=2
s[frei]=3
s[buff]=4
s[Cache]=5
s[si]=6
s[so]=7
s[bi]=8
s[bo]=9
s[in]=10
s[cs]=11
s[US]=12
s[SY]=13
s[ID]=14
s[WA]=15
s[st]=16

check_limit(){
      if [ $modus = "unter" ]
      then
	 if [ ${werte[$w]} -le $limit ]
         then
            echo ${werte[$w]}
	 fi
      fi
      if [ $modus = "über" ]
      then
	 if [ ${werte[$w]} -ge $limit ]
         then
            echo ${werte[$w]}
	 fi
      fi
}

while getopts i:c:l:g: option 2>/dev/null; do
         case $option in
        i) intervall=$OPTARG ;;
	c) spalte=$OPTARG ;;
	l) modus=unter
	limit=$OPTARG ;;
	g) modus=über
	limit=$OPTARG ;;
         ?) echo "Unbekannte Option. Bitte -i -c -l oder -g verwenden"
	    exit 1;;
         esac
 done
if [ $modus ]
then
	if [ $spalte = "all" ]
	then
	   echo "Option -c fehlt"
	   exit 2
	fi
fi
#Aufruf:
 #vmstat [Optionen] [Verzögerung [Anzahl]]
vmstat 1 $intervall | while read zeile
do
  ((c++))
   if [ $c -eq 1 ]
   then
      continue
   fi
   werte=($zeile)
   if [ $spalte = "all" ]
   then
      echo ${werte[*]}
   else
     w=${s[$spalte]}
    if [ ${werte[$w]} -eq ${werte[$w]} ]  2>/dev/null
	then
	check_limit
	else
     echo ${werte[$w]}
    fi 
  fi
done

