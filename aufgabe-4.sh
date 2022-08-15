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
