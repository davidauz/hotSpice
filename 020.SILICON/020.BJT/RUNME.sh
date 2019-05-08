#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear

echo -n "


CURRENT FOLDER: "
pwd
cat <<INPLD

Circuits where the BJT is the main character.

Press Enter to explore the folders.

INPLD
read a

CURRDIR=$PWD
for i in $( find . -maxdepth 1 -type d | grep -v "\.$" | sort ); do 
	cd $i
	if [ -f RUNME.sh ]; then
		./RUNME.sh
		read a
	fi
	cd $CURRDIR
done

