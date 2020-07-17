TIME = $(shell date)
LINES = $(shell cat guessinggame.sh | wc -l)
README.md: $(eval SHELL:=/bin/bash)
	touch README.md
	echo "# bash-project" > README.md
	echo "## The date and time of make is $(TIME)" >> README.md
	echo "## The number of lines in guessinggame.sh is $(LINES)" >> README.md 

