create_readme.md:
	touch readme.md
	echo "#Assignment of The Unix Workbench training" > readme.md
	echo "The *date and time* at which make was run :" >> readme.md
	date >> readme.md
	echo "The number of lines of code contained in **guessinggame.sh** :" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md