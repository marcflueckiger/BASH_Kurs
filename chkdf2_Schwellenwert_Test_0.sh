#!/bin/bash
# Testfile von MF

filesystem='/'
schwellwert=20
groesse=30


if [ $groesse -gt $schwellwert ];then
echo "Alarm: $filesystem ist zu $groesse% voll. Schwellwert: $schwellwert"
fi



