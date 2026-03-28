Open Source Audit: Python
Student Name: YOGESHWARAN R
Registration Number: 24BAS10011
Course: Open Source Software (Capstone Project)

Project Overview
This repository contains the technical audit and automation scripts for the Python programming language. The project explores Python's origin, the PSF License, its role in the LAMP stack, and its implementation within a Termux (Android Linux) environment.

Chosen Software
Software: Python 3.x  
Category: Programming Language  
License: PSF (Python Software Foundation) License

Script Descriptions
This repository includes five bash scripts demonstrating core Linux automation concepts:
1).script1.sh (System Identity): Displays distribution name, kernel version, user info, and system uptime.  
2).script2.sh (FOSS Package Inspector): Checks if Python is installed, retrieves the version, and prints a philosophy note using a case statement.  
3).script3.sh (Disk & Permission Auditor): Loops through system directories to report permissions, ownership, and disk usage.  
4).script4.sh (Log File Analyzer): Reads a file line-by-line to count occurrences of a specific keyword.  
5).script5.sh (Manifesto Generator): An interactive script that gathers user input to generate a personalized Open Source Manifesto .txt file.

Instructions to Run on Linux/Termux :
1).Prerequisites
Ensure you are using a Linux terminal (or Termux on Android) and have Python installed:
pkg update && pkg upgrade
pkg install python

2).Clone the Repository
git clone https://github.com/your-username/oss-audit-24BAS10011.git
cd oss-audit-24BAS10011

3).Grant Execution Permissions
Before running the scripts, you must make them executable:  
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh

4).Running the Scripts
Execute the scripts using the following commands:
Script 1: ./script1.sh
Script 2: ./script2.sh
Script 3: ./script3.sh
Script 4: ./script4.sh <filename> <keyword> (e.g., ./script4.sh script4.sh python)  
Script 5: ./script5.sh

Technical Environment Note
These scripts were developed and tested in a Termux environment. Because Termux is not FHS compliant, paths such as /usr/bin or /var/log may report as "not found" in script3.sh; the script correctly handles this by checking for their existence before auditing.

