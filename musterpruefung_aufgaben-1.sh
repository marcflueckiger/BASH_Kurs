# !/bin/bash
# Name:              aufgabe-1.sh
# Aufgabe:           Schreiben Sie ein Script, das die folgenden Anforderungen erfüllt:
# Hauptfunktion:     Liest eine Textdatei, zählt die Zeilen und gibt die Zeilen
#                    nummeriert auf die Standardausgabe aus. Anschliessend gibt es
#                    die Anzahl der gelesenen Zeilen in folgender Form auf stdout aus:
#                    "<Anzahl> lines read from <Dateiname>"
#                    Auch bei einer leeren Datei soll diese Ausgabe einen sinnvollen
#                    Inhalt haben.
#                    
# Beispiel:          $ bash aufgabe-1.sh test.txt
#                    1 Erste Zeile
#                    2 Zweite Zeile
#                    3 Dritte Zeile
#                    3 lines read from test.txt 
#                    $
#
# Fehlerbehandlung:  Es sollen folgende Fehlermöglichkeiten behandelt werden:
#                    1. Dem Script wurde nicht genau 1 Argument (Dateiname) übergeben 
#                       Reaktion: Fehlermeldung auf stderr:
#                       "usage: aufgabe-1.sh text-file"
#                       Beenden des Skrips mit Exit-Code 1
#                    2. Die Datei existiert nicht
#                       Reaktion: Fehlermeldung auf stderr:
#                       "error: <Dateiname> not found."
#                       Beenden des Skrips mit Exit-Code 2
#                    3. Ein Verzeichniseintrag <Dateiname> existiert, ist aber keine normale Datei
#                       Reaktion: Fehlermeldung auf stderr:
#                       "error: <Dateiname> is not a normal file."
#                       Beenden des Skrips mit Exit-Code 3
#                    4. Die Datei existiert, der Benutzer hat aber kein Leserecht 
#                       Reaktion: Fehlermeldung auf stderr:
#                       "error: cannot read <Dateiname>. Permission denied."
#                       Beenden des Skrips mit Exit-Code 4
#                    
# Einschränkungen:   1. Verwenden Sie keine externen Kommandos wie 
#                       nl oder wc, sondern ausschliesslich
#                       bash-Schlüsselwörter und bash-builtins für Ihre Lösung.
#                    2. Benennen sie diese Datei nicht um. 
#                    3. Verwenden Sie keine andere Shell als /bin/bash

# ******************** Ihre Lösung: ********************

name=$1

# Fehlerbehandlung d)
if [ $# -ne 1 ]; then
    echo "usage: $(basename $0) name" 1>&2
    exit 1;
fi

# Fehlerbehandlung e)
if [ ! -e "$name" ]; then
    echo "error: $name not found." 1>&2
    exit 2;
fi

# Fehlerbehandlung f)
if [ ! -f "$name" ]; then
    echo "error: $name is not a normal file." 1>&2
    exit 3;
fi

# Fehlerbehandlung g)
if [ ! -r "$name" ]; then
    echo "error: cannot read $name. Permission denied." 1>&2
    exit 4;
fi

# Hauptfunktionen a), b) und c)
counter=0;
while read line
do
    (( counter++ ))
    echo $counter $line
done < $name
echo
echo "$counter lines read from $name"



exit 2

if ! [ $# -eq 1 ]
then
        echo "usage: aufgabe-1.sh text-file" >&2
        exit 1
# 
elif ! [ -e $1 ];then
	echo "error: $1 not found."
	exit 2

elif ! [ -f $1 ];then
	echo "error: $1 is not a normal file."
	exit 3

elif ! [ -r $1 ];then
	echo "error: cannot read $1. Permission denied."
	exit 4
else

zeilennr=0
        while read balade
        do
      if [[ ! $balade == '' ]]
                then
                         ((zeilennr++))
                          echo $zeilennr: $balade
       else
	echo "keine Zeilen vorhanden"
	   fi
	
        done <$1

        echo $Balade
	echo $zeilennr lines read from $1

fi
#!/bin/bash
# Name:              aufgabe-2.sh
#                    Schreiben Sie ein Script, das die folgenden Anforderungen erfüllt:
# Hauptfunktion:     Zeigt die Server an, die für eine Domain (z.B. ifa.ch) Emails entgegennehmen
#                    Die Domain wird als 1. Argument übergeben
# Fehlerbehandlung:  Keine
# Einschränkungen:   1. Benennen sie diese Datei nicht um. 
#                    2. Verwenden Sie keine andere Shell als /bin/bash
# ******************** Ihre Lösung: ********************


host -t MX $1
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
#!/bin/bash
# Name:              aufgabe-4.sh
# Aufgabe:           Schreiben Sie Kommandos in ein Script, die folgenden Aufgaben erfüllen:
# Hauptfunktion:     1. git konfigurieren für Ihren  user "vorname.nachname"
#                       und der Email-Adresse vorname.namchname@student.ifa.ch
#                    2. Anlegen eines neuen git-Repository /home/student/loesungen/repo
#                    3. Aufnehmen von mindestens einer Script-Datei ins repository
#                       z.B. eine Kopie eines Scripts das sie schon haben 
#                       oder eine beliebige neue Datei
#                    4. Erzeugen einer weiteren Datei mit dem Namen "Geheim" mit beliebigem 
#                       Inhalt im Repository (z.B. eine Text-Datei mit ein paar Wörtern).
#                       Es soll sichergestellt werden, dass diese Datei niemals ins Repository
#                       aufgenommen und versioniert werden soll.
#                    5. Hinzufügen und Einchecken einer ersten Version aller Dateien im Repository 
#                       ausser der Datei "Geheim". Dabei soll für diese Version die Nachricht 
#                       "aufgabe-4 erledigt" erfasst werden.
#
# Fehlerbehandlung:  Keine
# Einschränkungen:   1. Benennen sie diese Datei nicht um. 
#                    2. Verwenden Sie keine andere Shell als /bin/bash
# ******************** Ihre Lösung: ********************



# git installieren
#sudo apt update
#sudo apt install git-core

#1 git konfigurenen / User Einrichten
git config --global user.name "marc.flueckiger"
git config --global user.email marc.flueckiger@students.ipso.ch
# Exclude Liste erstellen
git config --global core.excludesFile '~/.gitignore'
# Konfig darstellen
git config --list

# 1. mkdir Aufgaben # Verzeichnis für Repository
mkdir ~/loesungen/
mkdir ~/loesungen/repo
# 2. cd Aufgabne
cd ~/loesungen/repo
# 3. git init # Leeres Git-Repository in Aufgaben/.git/ initialisiert
git init
# 4. Bestehende Skripts ins Verzeichnis kopieren

# Kopiert die Scipts
echo erstelle ein leeres Script
#cp  ~/scripts/*.sh ~/Aufgaben/
#cp  ~/ueb/*.sh ~/Aufgaben/
touch neuesscript.sh

# Zeigt Status
echo Git Status abfragen
git status


# Kommentar beim Kommiten eintragen
#git commit -m "Neue Versionen $(date)"
git status
#cd ..

echo "Das ist eine Geheime Datei" >Geheim
Geheim >>~/.gitignore

# Alle Scripts hochladen
ls -l --color=auto
git add .
git status

# Kommentar beim Kommiten eintragen
git commit -m "aufgabe-4 erledigt"
git log
git status
# ende
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
source lib/myfunctions

while [ ${1} ]

    do
        if ! is_writable_dir $1 ;then
                echo ${1} create files not permitted.
        else
                echo ${1} create files permitted.
	fi
	
	shift
    done









#!/bin/bash
# Name:              aufgabe-7.sh
# Themen:            Kommandos zur Text-Manipulation in Dateien, if oder case
# Aufgabe:           Schreiben Sie ein Script, das die folgende Aufgabe erfüllt:
# Hauptfunktion:     In der Datei /etc/ssh/sshd_config soll die Einstellung, ob ein Login
#                    mit Passwort systemweit erlaubt oder verboten ist, geändert werden
#                    "PasswordAuthentication" ist das entsprechende Schlüsselwort in der Datei.
#                    a) PasswordAuthentication yes wird dort durch PasswordAuthentication no ersetzt,
#                       wenn das 1. Argument des Scripts "no" ist
#                    b) PasswordAuthentication no wird dort durch PasswordAuthentication yes ersetzt,
#                       wenn das 1. Argument des Scripts "yes" ist
#                    c) wenn das 1. Argument "status" ist, wird  Zeile aus /etc/ssh/sshd_config,
#                       die "PasswordAuthentication " enthält ausgegeben
#                    Nehmen Sie an, dass das Script als root oder mit sudo aufgerufen wurde und Sie
#                    somit die Berechtigung haben, die Datei zu ändern
# Beispiel:
#                    $ aufgabe-7.sh  yes
#                    $ aufgabe-7.sh  status
#                    PasswordAuthentication yes
#
#                    $ aufgabe-7.sh  no
#                    $ aufgabe-7.sh  status
#                    PasswordAuthentication no
#
# Fehlerbehandlung:  e) Prüfung, ob "yes","no" oder "status" angegeben wurde.
#                       Fehlermeldung auf stderr, falls nicht:
#                       "usage: aufgabe-7.sh yes|no|status"
#                    f) Im Fehlerfall: Beenden des Scripts mit dem Rückgabewert 1
#
# Einschränkungen:   1. Benennen sie diese Datei nicht um.
#                    2. Verwenden Sie keine andere Shell als /bin/bash
#                    3. Verwenden sie keinen interaktiven Editor, sondern ein Kommando für die
#                       Änderung in /etc/ssh/sshd_config
# ******************** Ihre Lösung: ********************
status=$1
case $status in
  "yes")    sed -i 's/PasswordAuthentication *no/PasswordAuthentication yes/' /etc/ssh/sshd_config
            ;;
  "no")     sed -i 's/PasswordAuthentication *yes/PasswordAuthentication no/' /etc/ssh/sshd_config
            ;;
  "status") egrep 'PasswordAuthentication *(yes|no)' /etc/ssh/sshd_config
            ;;
  *)        echo "usage: $(basename $0) yes|no|status"
            exit 1
esac






#!/bin/bash
# Name:              aufgabe-8.sh
# Themen:            Lokale Systemsicherheit, finden von Dateien mit bestimmten Eigenschaften
# Aufgabe:           Schreiben Sie eine Kommandozeile, die folgende Aufgabe erfüllt:
#                    Alle Dateien im System, die dem user root gehören und bei denen das SUID-Bit gesetzt
#                    ist, sollen aufgelistet werden. Das Kommando wird mit sudo oder als root ausgeführt
# Einschränkungen:   1. Benennen sie diese Datei nicht um.
#                    2. Verwenden Sie keine andere Shell als /bin/bash
#                       Änderung
# ******************** Ihre Lösung: ********************

find / -user root -perm -u+s -exec ls -ldb {} \;

# oder
# find / -user root -perm -4000 -exec ls -ldb {} \;




