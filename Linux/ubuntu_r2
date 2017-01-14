#!/usr/bin/python
import os
import pwd
import sys
import re
import subprocess
import socket

def app_check(app):
    ps= subprocess.Popen("dpkg -l | grep "+app, shell=True, stdout=subprocess.PIPE)
    output = ps.stdout.read()
    ps.stdout.close()
    ps.wait()
    if output:
    	return True
    else:
    	return False

points = []
score=0


if pwd.getpwuid( os.getuid() ).pw_name != 'root':
	print "You need to use sudo!!"
	sys.exit(1)

for line in open('/etc/passwd'):
	if 'toot' in line:
		toot = True
	if 'bob' in line:
		bob = True

if not toot:
	score = score+1
	points.append('Removed toot user')

if not bob:
	score = score+1
	points.append('Removed bob user')

if "cCv$6H0UHOtBqyxO7KZFD" not in open('/etc/shadow').read():
	score = score+1
	points.append('Changed Root Password')


if not app_check('bind9'):
	score = score+1
	points.append('Removed Bind9 DNS server')

if not app_check('medusa'):
	score = score+1
	points.append('Removed medusa')

if not app_check('openssh-server'):
	score = score+1
	points.append('Removed SSH server')

if not app_check('nmap'):
	score = score+1
	points.append('Removed nmap')

if not os.path.isfile('/usr/share/nginx/html/.backdoor.php'):
	score = score+1
	points.append('Removed PHP backdoor')

if not os.path.isfile('/.sneaky_script'):
	score = score+1
	points.append('Removed sneaky_script')

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
result = sock.connect_ex(('0.0.0.0',1337))
if result != 0:
	score = score+1
	points.append('NC is not listening')

for point in points:
	print point

print 
print str(score),"/ 12 Points"
