@echo off
net stop telnet
sc config tlntsvr start= disabled
product where name="telnet" call uninstall
sc delete telnet
pause
