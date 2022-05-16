#!/bin/bash


# Funktion Zeit starten
func_Zeit() {

# Bedingung ist hier immer gegeben. True
while true
do


# Zeit definieren / %H für Stunden, : als Trennzeichen
zeit=$(date +%H:%M:%S)
echo "[+] es ist: ${zeit}"
sleep 1
#echo "[+] es ist: $zeit[0]"

done
}

# Funktionsaufruf
func_Zeit

