#!/bin/bash

# Kopiert die Scipts
echo Kopiert Scripts nach Aufgaben
cp  ~/scripts/*.sh ~/Aufgaben/

# Lädt alle nach GITHub
echo Push nach GitHub
cd ~/Aufgaben
git status
git add .
git push https://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@github.com/marcflueckiger/BASH_Kurs.git
git status

