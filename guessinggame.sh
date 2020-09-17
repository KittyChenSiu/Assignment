#!/usr/bin/env bash
# file name : guessinggame.sh
# This is Kitty Chen's assignment fot the unix workbench training
# Date : Sep. 15, 2020

# This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. 
# The user will be informed if their guess is too high or too low. 
# Once the user guesses the correct number of files in the current directory they should be congratulated.

function func_readInput {
	echo "Please guess how many files are in the current directory?"
	read input
	echo "You entered: $input"
} 

echo "Program start."

func_readInput

# exclude the lines of directory and total
numFiles=$(ls -al | egrep -v "^d" | grep -v "total" | wc -l)


#echo "numFiles: $numFiles"

while [[ $input -ne $numFiles ]]
do
	if [[ $input -gt $numFiles ]]
		then
		echo "Your input is greater than  the no. of files in this directory."
	elif [[ $input -lt $numFiles ]]
		then
		echo "Your input is less than  the no. of files in this directory."
	fi
	func_readInput
done

echo "Your input is equal to  the no. of files in this directory"
echo "Congurations. You entered the correct answer."

echo "Program end."
