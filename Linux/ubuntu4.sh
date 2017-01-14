#!/usr/bin/env python2
# written by Moses Arocha


import os


def firewall(): 
    RunFireWallStatus = os.system('sudo ufw status  && sudo ufw enable')
    print RunFireWallStatus
    allow = 'y'
    while allow == 'y':
        allow = raw_input("\n\t Would you like to allow any ports? [Y/N] ")
        if allow == 'y':
	    port = raw_input("\n\t What port would you like to allow? ")
	    portAllowed = "sudo ufw allow " + port
  	    RunFireWallAllow = os.system(portAllowed)
	    print RunFireWallAllow
#The beginning of the deny port protocol
    deny = 'y'
    while deny == 'y':
        deny = raw_input("\n\t Would you like to deny any ports? [Y/N] ")
	 if deny == 'y':
	    port = raw_input("\n\t What port would you like to deny? ")
	    portDenyed = "sudo ufw deny " + port
	    RunFireWallDeny = os.system(portDenyed)
	    print RunFireWallDeny


def addUser(): 
    print " \n Please Choose What Type Of User You Would Like To Add.\n"
    os.chdir("/home")
    os.system("ls")
    print "\t\t[1] - Admin\n"
    print "\t\t[2] - Standard\n" 
    LevelofUser = input("\t\t\t Choice: ")
    if LevelofUser == 1:
        userName = raw_input("Enter the Name of the New Admin: ")
	os.system("sudo useradd -G adm,sudo,lpadmin " + userName)
    elif LevelofUser == 2:
	userName2 = raw_input("Enter the Name of the New User: ")
	os.system("sudo useradd --force-badname " +userName2)
    else:
	print "Invalid Choice"


def deletingUser(): 
    os.chdir("/home")
    os.system("ls")
    UserToDelete = raw_input("Enter User to Delete: ")
    os.system("sudo deluser " +UserToDelete+ " --remove-home")
    goBack = raw_input("\n\n\nPress Any Key to Return to the Menu ")

ipVar = raw_input(" Please Insert IP Address: ")
print ("\n\n In Compliance with the rules of Cyber Patriot, which Script Do You wish to Run?\n\n")
choice = int(raw_input("\t 1. Firewall Setup \n\t 2. AddUser \n\t 3. DeleteUser\n\n\t Script Number: "))

if 1 == choice:
    firewall()
    os.system("clear")

elif 2 == choice:
    addUser()
    os.system("clear")
    
elif 3 == choice:
    deletingUser()
    os.system("clear")
else:
    print "Incorrect Answer Choice"
