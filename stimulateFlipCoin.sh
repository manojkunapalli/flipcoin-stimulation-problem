#!/bin/bash
echo "Welcome to flip coin stimulating problem"

echo "fliping a coin!!"
echo -e

headCount=0;
tailCount=1;

while [ $headCount -ne $tailCount ]
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

if [ $headCount -eq $tailCount ]
then
	echo "It is a tie!!!"
	while [ $(($headCount-$tailCount)) -ne 2 ]
	do
		f=$(( 1 + RANDOM % 2 ))
		if [ $f -eq 1 ]
		then
			headCount=`expr $headCount + 1`
		else
			tailCount=`expr $tailCount + 1`
		fi
	done
fi

if [ $headCount > $tailCount ]
then
	echo "Heads wins the game"
	echo "Heads = $headCount"
else
	echo "Tails wins the game"
	echo "Tails = $tailCount"
fi
