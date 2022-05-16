#!/bin/bash

a=2
b=5

if [ $a -eq 4 ]
then
	echo "stimmt"
elif [ $b -eq 5 ]
then
	echo "zumindest b stimmt"
else
	echo "stimmt nicht"
fi
echo $c
