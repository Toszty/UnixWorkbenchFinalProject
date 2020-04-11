README.md: guessinggame.sh
	@touch README.md
	@echo "Guess The Number of Files in the Working Directory"  >> README.md
	@echo "The make file was ran on:" >> README.md
	@date >> README.md
	@ echo "The Total Number of files in the working directory is:" >> README.md
	@wc -l guessinggame.sh|cut -c 1-2 >> README.md	 
	@echo "README.md has been created"

clean:
	@rm README.md

