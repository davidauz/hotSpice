#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear

echo -n " 
CURRENT FOLDER: "
pwd

for i in *sch; do
	echo $i
	rm net.net
	gschem $i &
	gnetlist -g spice-sdb -o net.net $i
	ngspice net.net
done


