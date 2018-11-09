#!/usr/bin/env bash
# File guessinggame.sh
# A.Bailey 28th Sep 2017
# Function to count number of files in directory, not including hidden files
function countfiles {	
	ls | wc -l
}
# Call countfiles
nfiles=$(countfiles)
# Ask user to guess how many files there are
echo "Welcome to the guessing game."
echo "Guess how many files (not including hidden files) there are in this directory."
echo ""
echo "Please enter a number to make a guess:"
# Read the initial user input
read response
# Create a conditional loop for when the user input is not equal to the number of files.
while [[ $response -ne $nfiles ]] 
do
	# Condtion for when the user guesses less than the number of files
	if [[ $response -gt $nfiles ]]
	then
	echo "There are less than $response files."
	echo "Please enter a lower number to guess how many files are in the current directory:"
	# Take the new input and repeat the loop
	read response
# Condition for when the user guesses more than the number of files
elif [[ $response -lt $nfiles ]]
	then
	echo "There are more than $response files."
	echo "Please enter a higher number to guess how many files are in the current directory:"
	# Take the new input and repeat the loop
	read response
fi
done
# Print a message when the user guesses correctly
if [[ $response -eq $nfiles  ]]; then
	echo "Correct, there are $response files."
	echo "Well done and thanks for playing. Goodbye."
fi