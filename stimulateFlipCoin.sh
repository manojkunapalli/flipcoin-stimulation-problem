#!/bin/bash
echo "Welcome to flip coin stimulating problem"

echo "fliping a coin!!"
echo -e

headCount=0;
tailCount=0;

while [ $headCount -lt 21 ] && [ $tailCount -lt 21 ]
do
	a=$(( 1 + RANDOM % 2 ))
	if [ $a -eq 1 ]
	then
		((headCount++))
	else
		((tailCount++))
	fi
done

echo "number of times head has won = $headCount"
echo "number of times tail has won = $tailCount"

if [ $headCount -eq 21 -a $tailCount -eq 21 ]
then
	echo "It is a tie!!!"
elif [ $headCount -eq 21 ]
then
	echo "<----Heads wins the game---->"
else
	echo "<----Tails wins the game---->"
fi

