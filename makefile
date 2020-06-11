all: README.md

README.md: guessinggame.sh
	
	echo "# The Unix Workbench (Guessing Game)" > README.md
	echo -n "> Utkarsh Yadav | " >>README.md
	date '+%b %d %Y' >>README.md
	echo "---" >> README.md
	echo -e "\n## Description:  ">>README.md 
	echo "> make a program called *guessinggame.sh*. This program should continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user is informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated." >> README.md
	echo -e "\n**Number of lines in guessinggame.sh:** " >> README.md
	cat guessinggame.sh |wc -l >> README.md
	echo >> README.md
	echo -n "**Build date:** " >>README.md
	date >> README.md
	echo >> README.md
	echo  "\`\`\`bash" >> README.md
	cat guessinggame.sh >>README.md
	echo -n "\`\`\`" >> README.md
clean:
	rm README.md
