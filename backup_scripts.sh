#!/bin/bash
# Info zu git
# 27.06.22

# 1. mkdir Aufgaben # Verzeichnis für Repository
# 2. cd Aufgabne
# 3. git init # Leeres Git-Repository in Aufgaben/.git/ initialisiert
# 4. Bestehende Skripts ins Verzeichnis kopieren 

# Kopiert die Scipts
echo Kopiert Scripts nach Aufgaben
cp  ~/scripts/*.sh ~/Aufgaben/
cp  ~/ueb/*.sh ~/Aufgaben/

# Lädt alle nach GITHub
echo Push nach GitHub
cd ~/Aufgaben
# git status 
git status

# Alle Scripts hochladen
git add . 

#newest
git push https://marcflueckiger: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@github.com/marcflueckiger/BASH_Kurs.git --set-upstream origin master
#git push https://marcflueckiger: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@github.com/marcflueckiger/BASH_Kurs.git
#git push https://marcflueckiger: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@github.com/marcflueckiger/BASH_Kurs.git
# git push https://github.com/marcflueckiger/BASH_Kurs.git

# Kommentar beim Kommiten eintragen
git commit -m "Neue Versionen $(date)"
git status
cd ..
# ende


# git log # liest Protokoll mit den Commits
# git checkout #commit-ID   # lädt bestimmte Version runter
# git checkout master       # Ursprüngliche Version 
# git diff #commit-ID1 #commit-ID2
# git remote add origin https://.....git   # Eigene Datien auf GitHub hochladen
# git push -u origin master    #Branch master konfiguriert zum Folgenden von Remote-Branch master von origin.
# git clone https://github.com/blablabla/projekt.git   #Repository eines anderen clonen



