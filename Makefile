all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "Date and Time: $(shell date)" >> README.md
	@echo "Number of lines of code in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
