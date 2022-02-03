#! /usr/bin/bash
echo ""

cat banner.txt

echo "nmap automation:)"
echo ""
echo ""
echo ""

echo -e "\e[31m"
echo "please enter website name or ip address"
echo -e "\e[0m"
read reply
while true
do

echo -e "\e[31m"
echo "1: full scan[65535]"
echo "2: particular scan"
echo "3: script scan"
echo -e "\e[0m"

read answer

if [ $answer -eq  "1" ]

then
        nmap -p- $reply -vv
elif [ $answer -eq "2" ]
then 
	echo -e "\e[32m"
        echo "1:aggresive scan" 
        echo "2;aggresive scan with UDP & tcp syn"
        echo "3:aggresive scan no ping"
        echo "4:ping scan without port scan"
	echo "5:fast scan"
	echo "6:specific port scan"
	echo "0:main menu"
	echo -e "\e[0m"
	read option
	
	if [ $option -eq "1" ]
	then
		nmap -A $reply -vv
	elif [ $option -eq "2" ]
	then
		nmap -sS -sV -A $reply -vv
	elif [ $option -eq "3" ]
	then 
		nmap -A -Pn $reply -vv
	elif [ $option -eq "4" ]
	then 
		nmap -sn $reply -vv
	elif [ $option -eq "5" ]
	then	
		nmap -F $reply -vv
	elif [ $option -eq "6" ]
	then	 
		echo "enter port number"
		read port
		nmap -p $port $reply -vv
	elif [ $option -eq "0" ]
	then
		continue 

	else	
		echo "error"
	fi
elif [ $answer -eq "3" ]
then
	echo "select the catagory"
	echo ""
	echo -e "\e[32m"
	echo "1:default"
	echo "2:auth"
	echo "3:broadcast"
	echo "4:brute"
	echo "5:discovery"
	echo "6:dos"
	echo "7:exploit"
	echo "8:fuzzer"
	echo "9:intrusive"
	echo "10:malware"
	echo "11:safe"
	echo "12:version"
	echo "13:vuln"
	echo "0: main menu"
	echo -e "\e[0m"
	read sc
		if [ $sc -eq "1" ]
		  then 
			nmap --script=default $reply
		elif [ $sc -eq "2" ]
		 then 
			echo -e "\e[33m"
			ls /usr/share/nmap/scripts | grep auth
			echo -e "\e[0m"
			echo ""
			echo "enter the script name you want to use"
			read auth
			nmap --script=$auth $reply
	       elif [ $sc -eq "3" ]
		then
			echo -e "\e[33m"
			ls /usr/share/nmap/scripts | grep broadcast
			echo -e "\e[0m"
			echo ""
			echo "enter the script name you want to use"
			read broad
			nmap --script=$broad $reply
	      elif [ $sc -eq "4" ]
		then
			echo -e "\e[33m"
			ls /usr/share/nmap/scripts | grep brute
			echo -e "\e[0m"
			echo ""
			echo "enter the script you want to use"
			read brut
			nmap --script=$brut $reply
	      elif [ $sc -eq "5" ]
		then
			echo -e "\e[33m"
			ls /usr/share/nmap/scripts | grep discovery
			echo -e "\e[0m"
			echo ""
			echo "enter the script you want to use"
			read dis
			nmap --script=$dis $reply
	    elif [ $sc -eq "6" ]
		then 
			echo -e "\e[33m"
			ls /usr/share/nmap/scripts | grep dos
			echo -e "\e[0m"
			echo ""
			echo "enter the script you want to use"
			read dos
			nmap --script=$dos $reply
	   elif [ $sc -eq "7" ]
		then
			echo -e "\e[33m"
			ls /usr/share/nmap | grep exploit
			echo -e "\e[0m"
			echo "enter the script you want to use"
			read explo
			nmap --script=$expo $reply
	   elif [ $sc -eq "7" ]
		then
			echo -e "\e[33m"
			ls /usr/share/nmap/scripts | grep external
			echo -e "\e[0m"
			echo "enter the script you want to use"
			read external
			nmap --script=$external $reply
	   elif [ $sc -eq "8" ]
		then
			echo -e "\e[33m"
			ls /usr/share/nmap/scripts | grep fuzzer
			echo -e "\e[0m"
			echo "enter the script you want to use"
			read fuzz
			nmap --script=$fuzz $reply

	   elif [ $sc -eq "9" ] 
		then 
			echo -e "\e[33m"
			ls /usr/share/nmap/scripts | grep intrusive
			echo -e "\e[0m"
			echo "enter the script you want to use"
			read intru
			nmap --script=$intru $reply
	   elif [ $sc -eq "10" ]
		then
			echo -e "\e[33m"
			ls /usr/share/nmap/scripts | grep malware
			echo -e "\e[0m"
			echo "enter the script you want to use"
			read mal
			nmap --script=$mal $reply
	   elif [ $sc -eq "11" ]
		then 
			echo -e "\e[33m"
			ls /usr/share/nmap/scripts | grep safe
			echo -e "\e[0m"
			echo "enter the script you want to use"
			read safe
			nmap --script=$safe $reply
	   elif [ $sc -eq "12" ]
		then 
			echo -e "\e[33m"
			ls /usr/share/nmap/scripts | grep version
			echo -e "\e[0m"
			echo "enter the script you want to use"
			read ver
			nmap --script=$ver $reply
	  elif [ $sc -eq "13" ]
		then
			echo -e "\e[33m"
			ls /usr/share/nmap/scripts | grep vuln
			echo -e "\e[0m"
			echo "enter the script you want to use"
			read vuln
			nmap --script=$vuln $reply 
	  elif [ $sc -eq "0" ]
	     then
		continue
	 
		fi
else 
        echo "" 
fi
done
