frt 1: Basic Linux Commands 

	1.	File Management:
	•	Create a directory called assignment in your home directory.
	•	Inside the assignment directory, create two subdirectories: scripts and backup.
	•	Create a file called myfile.txt inside the scripts directory and add the text “Linux Assignment” to it.
	•	Copy myfile.txt to the backup directory.
	•	Display the contents of the myfile.txt file using the cat command.
Commands to use: mkdir, touch, cp, echo, cat
	2.	File Permissions:
	•	Change the permissions of the myfile.txt file to allow only the owner to read and write, but no other user should have any permissions.
	•	Verify the permissions of myfile.txt using ls -l.
Commands to use: chmod, ls -l

Part 2: Shell Scripting 

	1.	Create a Bash Script:
	•	Write a script named backup.sh that does the following:
	•	Accepts a filename as an argument.
	•	Checks if the file exists. If the file exists, it should copy the file to the backup directory and append the current date to the filename (e.g., myfile_20240930.txt).
	•	If the file does not exist, print an error message: “File does not exist.”
	•	The script should log all actions into a file called backup.log.
Example Execution:

./backup.sh myfile.txt


	2.	Bonus Task 
	•	Modify the backup.sh script to accept multiple files as arguments and back them up in a loop.
	•	Ensure that the script continues processing other files even if one file does not exist.

Part 3: System Monitoring and Process Management

	1.	Disk Usage:
	•	Check the disk space usage of your system using the df command. Redirect the output to a file called disk_usage.txt in the backup directory.
Command to use: df
	2.	Process Management:
	•	Write a script named monitor.sh that checks if a process called apache2 (or httpd for CentOS) is running.
	•	If the process is not running, print “apache2 is not running” (or httpd for CentOS).
	•	If the process is running, print “apache2 is running” (or httpd for CentOS).
Command to use: ps

Part 4: Advanced Task - Network Configuration 

	1.	Network Information:
	•	Display the IP addresses of your system using the ip or ifconfig command.
	•	Write this information into a file called network_info.txt inside the backup directory.
Commands to use: ip, ifconfig


