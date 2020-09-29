#!/bin/bash
echo "Welcome to flip coin stimulating problem"

a=$(( 1 + RANDOM % 2 ))

echo "fliping a coin!!"

if [ $a -eq 1 ]
then
	echo "Heads Won"
elif [ $a -eq 2 ]
then
	echo "Tails Won"
fi


