#!/bin/sh

# dumped with
# dconf dump /org/cinnamon/ > cinnamon.settings

if pacman -Qs dconf &> /dev/null ; then
	echo "=== loading custom cinnamon options..."
	
	dconf load /org/cinnamon/ < cinnamon.settings
	
	if [ $? -eq 0 ] ; then
		echo "=== loading of custom cinnamon options done"
	else
		echo "=== some error occure while loading settings"
	fi
else
	echo "=== dconf not installed, cannot setup options"
fi


