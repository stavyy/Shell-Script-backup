# Shell-Script-backup
A shell script (tcsh or bash) that is able to backup all *.txt program files in your current directory.

If a backup directory does not exist, then ask the user input a backup directory name, and make/create the backup directory (in your current working directory)
If the backup directory was successfully created or already exists
  For each .txt file:
    If the file does not exist in the backup directory, then copy the current file to the backup directory and print a message that the file has been backed up.
    If the file already exists in the backup directory, compare the updated time of the two files; if the backup file is out of date, copy the file and prompt a message, 
    otherwise, do nothing.
