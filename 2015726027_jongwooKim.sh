#!/bin/bash
resize -s 24 80
clear
tput cup 3
echo "                     __    __     _                      _"
echo "                     \ \  / /   _| |_ _ __    ___   _ __(_)"
echo "                      \ \/ / | | | __| '_ \  / _ \ | '__| |"
echo "                       │  │| |_| | |_| | | || (_) || |  | |"
echo "                       │__│ \__,_|\__| | |_| \___/ |_|  |_|"
tput cup 18 25 
echo "Press Spacebar to continue"
read -d " "
clear
tput cup 5 
echo "                                  SELECT COLOR"
tput cup 8
tput cup 10 
echo "                                 1. [33m● YELLO [0m"
tput cup 11 
echo "                                 2. [31m● RED[0m"
tput cup 12 
echo "                                 3. [34m● BLUE[0m"
tput cup 13 
echo "                                 4. [32m● GREEN[0m"
echo "Press 1P Number"
echo ">>"
#after '>>'character input
#select first person color
tput cup 15 3
c=0
while [ "c" != 1 ]
do
	tput civis
	tput ech 2
	read -n1 firstval && echo -e '\n'
	if [ $firstval = 1 ]
	then
		tput cup 15 0
		tput ech 10
		echo "[0m1P: [33mYELLOW"
		firstColor=1
	elif [ $firstval = 2 ]
	then
		tput cup 15 0
		tput ech 10
		echo "[0m1P: [31mRED"
		firstColor=2
	elif [ $firstval = 3 ]
	then
		tput cup 15 0
		tput ech 10
		echo "[0m1P: [34mBLUE"
		firstColor=3
	elif [ $firstval = 4 ]
	then
		tput cup 15 0
		tput ech 10
		echo "[0m1P: [32mGREEN"
		firstColor=4
	else
		tput cuu1 && tput cuu1 && tput cuu1 && tput cuu1 && tput cuu1 && tput dl 5
		break;
	fi
	tput dl 4
done
#second person color
while [ "c" != 1 ]
do
    tput civis
    tput ech 2
    read -n1 secondval && echo -e '\n'
	if [ $secondval = 1 ]
    then
		secondColor=1
        tput cup 18 0
        tput ech 19
        echo "[0m2P: [33mYELLOW"
        if [ $secondColor = $firstColor ]
        then
            tput cup 18 0
            echo "[0m>> [35mAlready Selected"
        fi
    elif [ $secondval = 2 ] 
    then
		secondColor=2
        tput cup 18 0
        tput ech 19
        echo "[0m2P: [31mRED"
        if [ $secondColor = $firstColor ]
        then
            tput cup 18 0
            echo "[0m>> [35mAlready Selected"
        fi
    elif [ $secondval = 3 ]
    then
		secondColor=3
        tput cup 18 0
        tput ech 19
        echo "[0m2P: [34mBLUE"
		        if [ $secondColor = $firstColor ]
        then
            tput cup 18 0
            echo "[0m>> [35mAlready Selected"
        fi
    elif [ $secondval = 4 ]
    then
		secondColor=4  
        tput cup 18 0
        tput ech 19
        echo "[0m2P: [32mGREEN"
		if [ $secondColor = $firstColor ]
        then
            tput cup 18 0
            echo "[0m>> [35mAlready Selected"
        fi 
    else
        tput cuu1 && tput cuu1 && tput cuu1 && tput cuu1 && tput cuu1 && tput dl 5
        break;
    fi 
done
clear
#input name 일부러 개행
	tput cup 7 24
	case $firstColor in
		1) echo "[33m<1P> [0m" && tput cup 7 29 && read -p "Name : " firstName;;
		2) echo "[31m<1P> [0m" && tput cup 7 29 && read -p "Name : " firstName;;
		3) echo "[34m<1P> [0m" && tput cup 7 29 && read -p "Name : " firstName;;
		4) echo "[32m<1P> [0m" && tput cup 7 29 && read -p "Name : " firstName;;
esac
while [ 'c' != 1 ]
do
	tput cup 14 24
	case $secondColor in
		1) echo "[33m<2P> [0m" && tput cup 14 29 && read -p "Name : " secondName;;
		2) echo "[31m<2P> [0m" && tput cup 14 29 && read -p "Name : " secondName;;
    	3) echo "[34m<2P> [0m" && tput cup 14 29 && read -p "Name : " secondName;;
    	4) echo "[32m<2P> [0m" && tput cup 14 29 && read -p "Name : " secondName;;
	esac
	if [ $firstName = $secondName ]
	then
    case $secondColor in
        1) echo "[33m<2P> [35m" && tput cup 14 36 && echo "Already exists type again, Press Spacebar";;
        2) echo "[31m<2P> [35m" && tput cup 14 36 && echo "Already exists type again, Press Spacebar";;
        3) echo "[34m<2P> [35m" && tput cup 14 36 && echo "Already exists type again, Press Spacebar";;
        4) echo "[32m<2P> [35m" && tput cup 14 36 && echo "Already exists type again, Press Spacebar";;
    esac
	tput dl 1
	read -d " "
	tput cup 14 0
	tput ech 77
	continue;
	fi
break;
done
#draw the yutpan
clear
resize -s 37 100
clear
tput civis
tput cup 0 1 && echo "┌────┐      ┌────┐      ┌────┐      ┌────┐      ┌────┐      ┌────┐"
tput cup 1 1 && echo "│    │──────│    │──────│    │──────│    │──────│    │──────│    │"
tput cup 2 1 && echo "│    │──────│    │──────│    │──────│    │──────│    │──────│    │"
tput cup 3 1 && echo "└────┘      └────┘      └────┘      └────┘      └────┘      └────┘"
tput cup 4 1 && echo "  ││     \                                              /     ││  "
tput cup 5 1 && echo "  ││       \                                          /       ││  "
tput cup 6 1 && echo "┌────┐       ┌────┐                           ┌────┐        ┌────┐"
tput cup 7 1 && echo "│    │       │    │                           │    │        │    │"
tput cup 8 1 && echo "│    │       │    │                           │    │        │    │"
tput cup 9 1 && echo "└────┘       └────┘                           └────┘        └────┘"
tput cup 10 1 && echo "  ││                \                        /                ││  "
tput cup 11 1 && echo "  ││                  ┌────┐           ┌────┐                 ││  "
tput cup 12 1 && echo "┌────┐                │    │           │    │               ┌────┐"
tput cup 13 1 && echo "│    │                │    │           │    │               │    │"
tput cup 14 1 && echo "│    │                └────┘           └────┘               │    │"
tput cup 15 1 && echo "└────┘                       \        /                     └────┘"
tput cup 16 1 && echo "  ││                           ┌────┐                         ││  "
tput cup 17 1 && echo "  ││                           │    │                         ││  "
tput cup 18 1 && echo "┌────┐                         │    │                       ┌────┐"
tput cup 19 1 && echo "│    │                         └────┘                       │    │"
tput cup 20 1 && echo "│    │                       /       \                      │    │"
tput cup 21 1 && echo "└────┘                ┌────┐          ┌────┐                └────┘"
tput cup 22 1 && echo "  ││                  │    │          │    │                  ││  "
tput cup 23 1 && echo "  ││                  │    │          │    │                  ││  "
tput cup 24 1 && echo "┌────┐               /└────┘          └────┘ \              ┌────┐"
tput cup 25 1 && echo "│    │         ┌────┐                         ┌────┐        │    │"
tput cup 26 1 && echo "│    │         │    │                         │    │        │    │"
tput cup 27 1 && echo "└────┘         │    │                         │    │        └────┘" 
tput cup 28 1 && echo "  ││       /   └────┘                         └────┘   \      ││  "
tput cup 29 1 && echo "  ││     /                                               \    ││  "
tput cup 30 1 && echo "┌────┐      ┌────┐      ┌────┐      ┌────┐      ┌────┐      ┌────┐"
tput cup 31 1 && echo "│    │──────│    │──────│    │──────│    │──────│    │──────│    │"
tput cup 32 1 && echo "│    │──────│    │──────│    │──────│    │──────│    │──────│    │"
tput cup 33 1 && echo "└────┘      └────┘      └────┘      └────┘      └────┘      └────┘"
tput cup 11 71 && echo "[33m┌───┐  ┌───┐  ┌───┐  ┌───┐"
tput cup 12 71 && echo "│ x │  │ x │  │ x │  │ x │"
tput cup 13 71 && echo "│   │  │   │  │   │  │   │"
tput cup 14 71 && echo "│ x │  │ x │  │ x │  │ x │"
tput cup 15 71 && echo "│   │  │   │  │   │  │   │"
tput cup 16 71 && echo "│ x │  │ x │  │ x │  │ x │"
tput cup 17 71 && echo "│   │  │   │  │   │  │   │"
tput cup 18 71 && echo "│ x │  │ x │  │ x │  │ x │"
tput cup 19 71 && echo "│   │  │   │  │   │  │   │"
tput cup 20 71 && echo "│ x │  │ x │  │ x │  │ x │"
tput cup 21 71 && echo "│   │  │   │  │   │  │   │"
tput cup 22 71 && echo "└───┘  └───┘  └───┘  └───┘"
case $secondColor in
	1) tput cup 29 70 && echo "[33m<$secondName> ● 1 ● 2 ● 3 ● 4";;
	2) tput cup 30 70 && echo "[31m<$secondName> ● 1 ● 2 ● 3 ● 4";;
	3) tput cup 31 70 && echo "[34m<$secondName> ● 1 ● 2 ● 3 ● 4";;
	4) tput cup 32 70 && echo "[32m<$secondName> ● 1 ● 2 ● 3 ● 4";;
esac  
case $firstColor in
    1) tput cup 1 70 && echo "[33m<$firstName> ● 1 ● 2 ● 3 ● 4";;
    2) tput cup 2 70 && echo "[31m<$firstName> ● 1 ● 2 ● 3 ● 4";;
    3) tput cup 3 70 && echo "[34m<$firstName> ● 1 ● 2 ● 3 ● 4";;
    4) tput cup 4 70 && echo "[32m<$firstName> ● 1 ● 2 ● 3 ● 4";;
esac
declare -i xpos=62
declare -i ypos=31 && declare -i yera=$ypos+6
declare -i firstmal=0
declare -i cnt=0 && declare -i c=0
declare -i secondmal=0

	while [ $firstmal -lt 5 ]
	do
		tput cup $ypos $xpos && echo "● 1"
		read -d " "
		tput cup $ypos $xpos && echo "    "
		ypos=$ypos-6
		firstmal=$firstmal+1
	done
	while [ $firstmal -lt 10 ]
	do
		tput cup $ypos $xpos && echo "● 1"
		read -d " "
		tput cup $ypos $xpos && echo "    "
		xpos=$xpos-12
		firstmal=$firstmal+1
	done
	while [ $firstmal -lt 15 ]
	do
		tput cup $ypos $xpos && echo "● 1"
		read -d " "
		tput cup $ypos $xpos && echo "    "
		ypos=$ypos+6
		firstmal=$firstmal+1
	done
	while [ $firstmal -lt 20 ]
	do
		tput cup $ypos $xpos && echo "● 1"
		read -d " "
		tput cup $ypos $xpos && echo "    "
		xpos=$xpos+12
		firstmal=$firstmal+1
	done
clear
resize -s 24 80
clear
tput cup 8 17 && echo "[0m  __ _  __ _ _ __ ___   ___  _____   _____ _ __ "
tput cup 9 17 && echo " / _\` |/ _\` | '_ \` _ \ / _ \/ _ \ \ / / _ \ \'__|"
tput cup 10 17 && echo "| (_| | (_| | | | | | |  __/ (_) \ V /  __/ |   "
tput cup 11 17 && echo " \__, |\__,_|_| |_| |_|\___|\___/ \_/ \___|_| "
tput cup 12 17 && echo " |___/ "
tput cup 17 28 && echo "Press Spacebar to exit" && read -d " " tput cnorm
