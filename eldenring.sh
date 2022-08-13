#!/bin/bash

echo "Welcome tranished. Please select your starting class:
1 - Samuarai
2 - Prisoner
3 - Prophet"

read class

case $class in

	1)	type="Samurai"
		hp=10
		attack=20
		money=20
		;;
	2)	type="Prisoner"
		hp=20
		attack=4
		money=30
		;;
	3)	type="Prophet"
		hp=30
		attack=4
		money=100
		;;
	*)	echo please choose;
esac

echo "You chosen the $type class. with $money cash"
echo "Your HP is $hp and your attack is $attack"

#echo "you Died"
sleep 1
beast=$(( $RANDOM % 2 ))

echo "Your first beast approaches. Prepare to battle. Pick a number between 0-1."

read tranished

if [[ $beast == $tranished || $tranished == "coffee" ]];then
	echo "Beast VANQUISHED!! Congrats fellow tranished"

else
	echo "You Died"
	exit 1
fi

sleep 2 



echo "Boss battle. Get scared. It is Margit. Pick a number between 0-9"


while [ ${hp} -ge 1 ]
do
beast=$(( $RANDOM % 10 ))
read tranished
if [[ $beast == $tranished || $tranished == "coffee" ]];then
	echo "Margit VANQUISHED!! Congrats fellow tranished"
	echo ".............the End?"

	exit 1
elif [[ $class == 1 && $hp -gt 1 ]];then
	hp=$(( hp - 1 ))
	echo "You get hit, but still have ${hp}hp. hit her again:"

	if [[ $hp -eq 4 ]];then
	rechnung=0
	echo "Buy an item: "
	select var in "Potion" "Weapon" "Bill" "Finish"
	do
        case $var in
        "Potion") echo you choosen a magic potion +5hp
	((buyhp=$buyhp+2))
        ((rechnung=$rechnung+5));;
        "Weapon") echo you choosen a weapon 5pt for 10.- 
	((buyattack=$buyattack+5))
        ((rechnug=$rechnung+10));;
        "Bill")
        	if [[ ! $rechnung || $money -eq 0 ]]
        	then
                	echo not enough money or no article choosen
                else
                	echo Your bill is $rechnung".-"
			echo Your own $money
		fi
        	;;
        	"Finish")

        	if [ ! $rechnung ]
        	then
                	echo Thank you, you do not have to pay.
                else
       		echo Thank you, please buy $rechnung".-"
        	hp=$((hp + buyhp))
		attack=$((attack + buyattack))
		echo HP is $hp
		echo Attack is $attack
		fi
        	break;;
        		*) echo no such item


		esac
		done
	fi
	#echo "You get hit, but still have ${hp}hp. hit her again:"
	 

elif [[ $class == 2 && $hp -gt 9 ]];then
	hp=$(( hp - 9 ))
	echo "You get hit, but still have ${hp}hp. hit her again:"
	continue
else
	echo beast: $beast, you: $tranished
	echo "You Died"
	exit 1
 fi
done
