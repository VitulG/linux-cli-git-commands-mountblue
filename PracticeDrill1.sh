Commands :-

1. mkdir hello -> means using mkdir I have create an empty folder hello.
2. mkdir one five -> means I have create two folders using mkdir with multiple subdirectories at once.
3. creating the files
	I have created the text files (a,b,c,d,e) and log(error, access) files using touch command
	touch a.txt
	touch error.log
	
4. Delete all the files having the .log extension
	command -> find . -type f -name "*.log" -delete
	
	explaination -> 1. find -> this command will find the files and folder in a given path based on the conditions.
						   2. . -> this dot tells we are in the current directory(hello directory).
						   3. -type f -> this is an expression to get all the files only in a given path.
						   4. -name "*.log" -> it will matches and gives only those files whose name ends with .log. 
						   5. * -> this is a wildcard for any character before .log.
						   5. -delete -> it deletes the files that matches on a given condition. 
	
5. add content to a.txt file
	command -> cat > a.txt 
						"content"
						ctrl + C for save and exit from the cat.

6. Delete the directory named five
    command -> rm -rf five  -> using rm command with -rf. -r will delete all the files and subdirectories inside five folder and -f forcefully will delete all the files and subdirectories.

7. Rename the one directory to uno
	command -> mv one uno -> mv command is used for move files as well as renaming the folders.
	
8. Move a.txt to the two directory
	command -> mv a.txt two/ -> this command moves a.txt files to two's folder.