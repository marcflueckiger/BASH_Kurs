#!/bin/bash
# Info zu git
# 11.7.22

# git installieren
sudo apt update
sudo apt install git-core

# git konfigurenen / User Einrichten
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


# git log # liest Protokoll mit den Commits
# git checkout #commit-ID   # lädt bestimmte Version runter
# git checkout master       # Ursprüngliche Version 
# git diff #commit-ID1 #commit-ID2
# git remote add origin https://.....git   # Eigene Datien auf GitHub hochladen
# git push -u origin master    #Branch master konfiguriert zum Folgenden von Remote-Branch master von origin.
# git clone https://github.com/blablabla/projekt.git   #Repository eines anderen clonen



