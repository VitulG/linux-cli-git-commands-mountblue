Pipes :- 

1. Print the first three lines in the book

Command -> head -n 3 HarryPotterAndGobletOfFire.txt
	Explaination -> head -> this is a command used to show the beginning of the file.
							-n 3 -> this prints first 3 lines instead of default 10 lines of a file.
							HarryPotterAndGobletOfFire.txt -> this is a file where you want to read from the beginning.

2. Print the last 10 lines in the book

Command -> tail -n 10 HarryPotterAndGobletOfFire.txt
	Explaination -> tail -> this command will show file from the last.
						   -n 10 -> this prints last 10 lines.
						  HarryPotterAndGobletOfFire.txt -> this is a file where you want to read from the end.
						  
3. How many times do the following words occur in the book.
	// for finding a words how many times it occurs in the book we will use grep + wc using pipe operator. grep will search the word in the file and wc will give the count of the word per line
	Command -> grep -ow "Harry" HarryPotterAndGobletOfFire.txt | wc -l
						 grep -ow "Ron" HarryPotterAndGobletOfFire.txt | wc -l
						 grep -ow "Hermione" HarryPotterAndGobletOfFire.txt | wc -l
						 grep -ow "Dumbledore" HarryPotterAndGobletOfFire.txt | wc -l
						 
4. Print lines from 100 through 200 in the book
	Command -> head -200 HarryPotterAndGobletOfFire.txt | tail -101

						 
5. How many unique words are present in the book?
	Command -> tr '[:alnum]' '\n' < HarryPotterAndGobletOfFire.txt | sort | uniq | wc -l

Processes and Ports :-
1. List your browser's process ids (pid) and parent process ids(ppid)
	Command -> ps aux | grep chrome

2. Stop the browser application from the command line
	Command -> pkill -9 chrome 
	Explaination -> pkill is a command use to kill a process and -9 is an option to kill a process forcefully.

3. List the top 3 processes by CPU usage.
	Command -> ps -eo pid,ppid,cmd,%cpu --sort=-%CPU | head -n 4
	
4. List the top 3 processes by memory usage.
	Command -> ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 4
	
5. Start a Python HTTP server on port 8000
	Command -> python3 -m http.server 8000
	
6. Open another tab. Stop the process you started in the previous step
	Command -> kill -9 python3 process id (killing a process by its id)

7. Start a Python HTTP server on port 90
	Command -> python3 -m http.server 90
	
8. Display all active connections and the corresponding TCP / UDP ports.
	Command -> netstat -tu

9. Find the pid of the process that is listening on port 5432
	Command-> lsof -i :5432


Managing Software :- 

// For installing or update softwares we use supo apt commands

sudo -> means Super User Do means provide admin access to normal user to install required softwares
apt -> means advanced package tool means it install the required packege of the softwares with install operation.
purge -> means remove package along with config files and auto-remove means removes unused dependencies which installed while installing package.

1. Installing htop -> sudo apt install htop 
2. Installing vim -> sudo apt install vim 
3. Installing nginx -> sudo apt install nginx
4. UnInstalling nginx -> sudo purge --auto-remove nginx
 
 
 MISC:-
 
 1. Find Local IP address -> hostname -i -> hostname tell us in which network our device is connected and -i for to get our IP address.
 2. Find the IP address of google.com -> host google.com
 3. How to check if Internet is working using CLI -> ping google.com (or any domain or IP)
 4. Node command location -> we can find the location of nodejs using which command (/user/bin/nodejs)