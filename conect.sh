#!/bin/bash
#
function disp {
	sleep 1; echo;
    read -n 11 -p 'Introduce los 3 primeros bits de la direcion IP: ' address; sleep 1;
}
disp
 clear; sleep 1; echo;
  echo -e "\033[1;33m ///////////////////////////////////////////////////// \033[0m"
  echo -e "\033[1;34m   	Dispositivos Conectados A La Red	    \033[0m"
  echo -e "\033[1;33m ///////////////////////////////////////////////////// \033[0m"
 cont=1
 total=0
while [ $cont -lt 15 ]; do
		ping $address.$cont -c2>/dev/null
	 if [ $? -eq 0 ];
	   then
  echo -e "\033[1;32m   Address IP:   $address.$cont             ONLINE \033[0m"
	    total=$[$total+1];
	  fi
	cont=$[$cont+1];
   done
	echo;
 echo -e "\033[1;34m ########################################################### \033[0m"
 echo -e "\033[1;33m 	[+] Dispositivos Conectados En La Red: $total online     \033[0m"
 echo -e "\033[1;34m ########################################################### \033[0m\n"
