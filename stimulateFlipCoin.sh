#!/bin/bash
echo "Welcome to flip coin stimulating problem"

echo "fliping a coin!!"
echo -e

headCount=0;
tailCount=0;

while [ $headCount -le 20 ] || [ $tailCount -le 20 ]
do
	a=$((1+RANDOM%2))
	if [ $a -eq 1 ]
	then
		echo "Heads"
		headCount=$(($headCount + 1))
	elif [ $a -eq 2 ]
	then
		echo "Tails"
		tailCount=$(($tailCount + 1))
	fi
done

echo "number of times head has won = $headCount"
echo "number of times tail has won = $tailCount"

if [ $headCount -eq 21 -a $tailCount ]
then
	echo "It is a tie!!!"
elif [ $headCount -eq 21 ]
then
	echo "<----Heads wins the game---->"
else
	echo "<----Tails wins the game---->"
fi

