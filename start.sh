#!/bin/bash

spacing=" ---------------------------------------------------- "
lang=$(cat $HOME/EBomber/config/lang)
sleeptime=0.4

clear

sleep $sleeptime

if [[ $lang = "" ]]

	then

		echo ""
		echo "  _____  _____  _____  _    _  _____  _____  _____   "
		echo " |  ___||  _  ||  _  || \  / ||  _  ||  ___||  _  |  "
		echo " | |__  | |_| )| | | ||  \/  || |_| )| |__  | |_| )  "
		echo " |  __| |  _ ( | | | || \  / ||  _ ( |  __| |  _ (   "
		echo " | |___ | |_| )| |_| || |\/| || |_| )| |___ | | \ \  "
		echo " |_____||_____||_____||_|  |_||_____||_____||_|  \_\ "
		echo ""

		sleep $sleeptime

		echo "$spacing "
		echo ""

		sleep $sleeptime

		echo " Select language: "
		echo ""
		echo " 0 | English "
		echo ""
		echo " 1 | Russian "
		echo ""

		sleep $sleeptime

		echo "$spacing "
		echo ""

		sleep $sleeptime

 		read -p " What language do you speak? > " choose

		case "$choose" in

			"0" )
			echo en > $HOME/EBomber/config/lang; clear; bash $HOME/EBomber.sh
			;;

			"1" )
			echo ru > $HOME/EBomber/config/lang; clear; bash $HOME/EBomber.sh
			;;

		esac


	else

		case "$lang" in

			"en" )
			bash $HOME/EBomber/lang/en/EBomber.sh
			;;

			"ru" )
			bash $HOME/EBomber/lang/ru/EBomber.sh
			;;

		esac

fi

clear