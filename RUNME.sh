#!/bin/sh

find . -name "*.net" -exec rm {} \;
find . -name "*.raw" -exec rm {} \;
find . -name "*.cir" -exec rm {} \;
find . -name "*~" -exec rm {} \;
find . -name "*\.dat" -exec rm {} \;
find . -name "\#*" -exec rm {} \;
find . -type d -empty -delete

CURRDIR=$PWD
for i in $(ls | grep ^0); do 
	cd $i
	echo -n "FOLDER: " 
	pwd
	if [ -f RUNME.sh ]; then
		./RUNME.sh
	fi
	cd $CURRDIR
done

