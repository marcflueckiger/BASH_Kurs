#!/bin/bash
#MaFl 12.05.22

# Prüft ob Parameter 1 einen Wert hat
if [ -ne 4 ]
then
echo "Parameter eingeben"
exit 1
fi

# Fehlerausgabe, wenn kein parameter gesetzt ist.
if [ -e ${1} ]
then
echo "Gleicher Name "
exit 2
fi




#Setzt die Variable Datei mit Endung sh
export	datei="${1}"

# Script erstellen: Schreibt Datei mit inhalt.
	echo '#!/bin/bash' 		>"$datei"
	echo '# Beschreibung : '$2 >>"$datei"
	echo '# Autor        : '$3 >>"$datei"
	echo '# Version      : '$4 >>"$datei"
	echo '# Datum        : '$(date +%Y-%m-%d) >>"$datei"
	echo '# =====================================' >>"$datei"
	echo '' >>"$datei"
# Script ausführbar machen
chmod +x "$datei" 
#Dateiname ausgeben
echo "Script "$datei" erstellt"

# Script mit vi öffnen und zum Ende gehen mit +
vi "$datei" +
ls -l "$datei"
