#!/usr/bin/env bash


layout=$(hyprctl devices | grep -B 3 'main: yes'$ | grep "active keymap:" | tail -n 1 | awk '{print tolower(substr($3,1,2))}')

if [ $layout = 'en' ]
then 
	# echo $layout
	exit 0
elif [ $layout = 'ru' ]
then 
	# echo $layout
	exit 1
fi

