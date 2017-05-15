#!/bin/bash
ip=$1
cd ~/Desktop
mkdir MS17010
cd MS17010
wget https://raw.githubusercontent.com/netwrkspider/wannaDecrypt/master/smb-scanner-nmap/smb-vuln-ms17-010.nse
nmap -oN MS17010.txt -p 445 --script "smb-vuln-ms17-010.nse" $ip
