Task 1: 
(Get-ChildItem -File).Name |Get-ChildItem | Rename-Item -NewName { $_.Name -replace "-" "_", "" }
 Out-File "FileList.txt" |
Not a perfect command but since all the filenames start with the name and then -, _, 
or space we can cut there and just use the start for our answer

Task 2:
Grades Final seems to be a stale file with less information than grades-final-2.csv so we
should be using final-2. Chen's submission gets autorenamed and Bob has an overwrite occur 
both of which can be sorted by looking for (overwrite or (sanitized
Using powershell we can search for these parts of the string with select-string 
-path -pattern or line-delineated

Task 3:
Using the same method we can look for WARN or ERROR lines in the log file

Task 4:


