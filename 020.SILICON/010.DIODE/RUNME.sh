#!/bin/sh


CURRDIR=$PWD
for i in $(ls | grep ^0); do 
	cd $i
	if [ -f RUNME.sh ]; then
		./RUNME.sh
	fi
	cd $CURRDIR
	clear
	echo -n "FOLDER: " 
	pwd
	echo "
Press Enter to continue with the next folder.
Press Ctrl+C to stop here.
	"
	read a
done

