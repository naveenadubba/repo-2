all : guessinggame.sh

	touch README.md

	echo "Guessing game  " > README.md

	echo "`date`  " >> README.md

	echo `wc -l < guessinggame.sh` >> README.md
