#!/bin/bash
echo "Welcome to flip coin stimulating problem"

echo "fliping a coin!!"
echo -e

read -p "number of coin flips = " number
headCount=0;
tailCount=0

for i in `seq $number`
do
	a=$(( 1 + RANDOM % 2 ))
	if [ $a -eq 1 ]
	then
		((headCount++))
	elif [ $a -eq 2 ]
	then
		((tailCount++))
	fi
done

echo "number of times head has won = $headCount"
echo "number of times tail has won = $tailCount"


