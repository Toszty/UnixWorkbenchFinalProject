num_files=$(ls -l|wc -l)

echo "Guess how many files there are in the current directory"
read guess_num


function too_high {
	echo "Your guess is too high, try a lower number"
}

function too_low {
	echo "Your guess is too low, try a higher number"
}


if [[ $guess_num -eq $num_files ]]
then
	echo "Congratulations you have guessed correctly"
	echo "Program ending..."
else
	while [[ $guess_num -ne $num_files ]]
	do
		if [[ $guess_num -gt $num_files ]]
		then	
			too_high
			read guess_num
		else
			too_low
			read guess_num
		fi
	done
	echo "Congratulations you have finally guessed correctly correctly"
	echo "Program ending..."	
fi
