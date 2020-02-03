#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd

for i in *sch; do
	gschem $i &
	gnetlist -g spice-sdb -o net.net $i
	ngspice net.net
	echo "Press ^C to quit, RETURN to continue"
	read a
done


