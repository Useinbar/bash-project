#!/bin/bash
# Script BASH 
# Manuel Utilisation script

RED='\033[0;35m'
NC='\033[0m'

if [ -n "$1" ]; then
	if [ -n $1 ] && [ -n $2 ]; then
		if [ $1 == "bash" ] || [ $1 == "python" ] || [ $1 == "perl" ]; then 
			if [ $1 == "bash" ] && [ -n $2 ]; then
				touch $2.sh
				chmod 744 $2.sh
				echo "#!/bin/bash" >> $2.sh
				read -p "Ouvrir le fichier avec vim ? Y/N   " rep
					if [ $rep == "y" ] || [ $rep == "Y" ]; then 
						vim $2.sh
					else
						ls -a
					fi
			elif [ $1 == "perl" ]; then
				touch $2.pl
				chmod 744 $2.pl
				echo "#!/bin/perl" >> $2.pl
				read -p "Ouvrir le fichier avec vim ? Y/N   " rep
					if [ $rep == "y" ] || [ $rep == "Y" ]; then
						vim $2.pl
					else
						ls -a
					fi
			elif [ $1 == "python" ]; then
				touch $2.py
				chmod 744 $2.py
				echo "#!/bin/python3" >> $2.py
					if [ -n $3 ]; then
				       		echo "import $3" >> $2.py
			        	fi
					read -p "Ouvrir le fichier avec vim ? Y/N   " rep
					if [ $rep == "y" ] || [ $rep == "Y" ]; then
						vim $2.py
					else
		 				ls -a
					fi	
			fi
		fi
	fi
else 
	echo -en " Directory : ${RED}$PWD${NC} \r"
	echo -e " "
	echo -e " Manuel d'utilisation du $0 : "
	echo -e " Ce script permet la création automatique de script python ou bash avec des librairies intégrées "
	echo -e " Pas besoin d'ajouter l'extension du fichier "
	echo -e " Exemple : "
	echo -e " $0 python <library> "
	echo -e " $0 bash <Script-Name>"
	echo -e " $0 perl <Script-Name>" 
fi

