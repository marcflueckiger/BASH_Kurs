#!/bin/bash
#MaFl 12.05.22
interactive=no
shell=/bin/bash

while getopts :s:i option 2>/dev/null; do
 case $option in
	i) interactive=yes
	;;
	s) shell=$OPTARG
	;;
	:) echo "-$OPTARG benögit ein zusätzliches Argument"
	 exit 11
	;;
	?) echo "Unbekannte Option -$OPTARG"
	exit 10
	;;
 esac
done

if  [ $interactive == "yes" ]
then
	echo "Parameter -i eingegenen"
	read -p "Scriptname: " name
	read -p "Beschreibung: " description
	read -p "Autor: " autor
	read -p "Version: " version
else        
# Prüft ob Parameter 1 einen Wert hat
        if [ $# -ne 4 ]
        then
        	echo "4 Parameter eingeben"
        	exit 1
        fi
	
        name=$1
        # Das 2. Argument ist die Kurzbeschreibung
        description=$2
        # Das 3. Argument ist der Autor
        autor=$3
        # Das 4. Argument ist die Version
        version=$4

fi

        # Fehlerausgabe, wenn Datei schon vorhanden
        if [ -e $name ]
        then
        	echo "Gleicher Name "
        	exit 2
        fi



        #Setzt die Variable Datei mit Endung sh
        #export datei="${1}"
        export  datei=${name}
        # Script erstellen: Schreibt Datei mit inhalt.
                echo "#!${shell}"             >"$datei"
                echo '# Beschreibung : '${description:=${2}} >>"$datei"
                echo '# Autor        : '${autor:=${3}} >>"$datei"
                echo '# Version      : '${version:=${4}} >>"$datei"
                echo '# Datum        : '$(date +%Y-%m-%d) >>"$datei"
                echo '# =====================================' >>"$datei"
                echo '' >>"$datei"
        # Script ausführbar machen
        chmod +x "$datei"
        #Dateiname ausgeben
        echo "Script "$datei" erstellt"
	
	echo "wähle einen Editor"
	select editor in "vi" "nano" "Abbruch"
	do
		case $editor in

        # Script mit vi öffnen und zum Ende gehen mit +
        	"vi") vi "$datei" +
		break
		;;
		"nano") nano +7 "$datei"  
		break
		;;
		"Abbruch") break;;
		*) echo Unbekannte Auswahl
			continue;;
	esac
done
        ls -l "$datei"

