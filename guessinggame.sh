#!/usr/bin/env bash

# File: guessinggame.sh



function get_num_of_files {

	echo $(ls -1 | wc -l)

}



answer=$(get_num_of_files)

printf 'How many files are in the current directory? What do you think? \n'

read guess

while [[ $guess -ne $answer ]]

do

	printf 'Your guess is too '

	if [[ $guess -gt $answer ]]

	then

		printf 'high'

	else printf 'low'

	fi

	echo '. Try again'

read guess

done



echo "Congratulations! Your guess is correct. The number of files in the current directory is $answer."

echo "Thank you for playing!"
