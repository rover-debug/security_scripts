#!/bin/bash 
#All of the stuff below is just install and WILL earn points
echo Welcome to the Linux Security Cleaner
echo  DONT FORGET TO
echo Copy the README
echo Update Users according to README
echo Write down password if changed
echo Change passwords
echo Look for malicious software
echo Good Luck
sleep 3
sudo apt-get upgrade
sudo apt-get update
sudo apt-get autoremove
sudo apt-get autoclean
sudo ufw enable
sudo apt-get install unattended-upgrades
sudo dpkg-reconfigure -plow unattended-upgrades
#Where installs end
#Now to install all programs:
sudo apt-get install gufw
cd /usr/local 
sudo git clone https://github.com/CISOfy/lynis
cd ~
sudo apt-get install chkrootkit

cd Downloads
mkdir Script_Stuff
cd
#Now all programs from the checklist are installed (Please post an issue if you see one more,it would be greatly appreciated)
#Now will be a menu to run all programs that were previously installed
#Other Linux commands run to make the system more secure
select opt in Gufw chkrootkit Listen_Ports Quit DeleteMedia
do
    case $opt in
        Gufw)
            echo "You chose run GUFW"
            sleep 3
			cd ~
			sudo gufw
            ;;
        chkrootkit)
            echo "you chose to run chrootkit"
			cd ~
			sudo chkrootkit
            ;;
     
           
	    Listen_Ports)
	
            cat /etc/services > ports.txt 
	      echo Ports were copied
           
            ;;
	    DeleteMedia)

find / -name "*.mp3" -type f -delete
find / -name "*.wav" -type f -delete
find / -name "*.wmv" -type f -delete
find / -name "*.mp4" -type f -delete
find / -name "*.mov" -type f -delete
find / -name "*.avi" -type f -delete
find / -name "*.mpeg" -type f -delete
find /home -name "*.jpeg" -type f -delete
find /home -name "*.jpg" -type f -delete
find /home -name "*.png" -type f -delete
find /home -name "*.gif" -type f -delete
find /home -name "*.tif" -type f -delete
find /home -name "*.tiff" -type f -delete
;;
	Quit)
			break

	   ;;
    esac
done

#This is the end of the menu
