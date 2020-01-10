#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

# this example needs a device model
HOTSPICEHOME=$( pwd | sed 's/hotspice.*/hotspice/' )
cp $HOTSPICEHOME/models/2N5551.mod .

clear
echo -n "
CURRENT FOLDER: "
pwd

for i in *sch; do
	gschem $i &
	gnetlist -g spice-sdb -o net.net $i
	ngspice net.net
done


