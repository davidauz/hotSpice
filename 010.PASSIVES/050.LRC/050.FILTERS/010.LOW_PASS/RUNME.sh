#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd


gschem capacitor.sch &
gnetlist -g spice-sdb -o net.net capacitor.sch
ngspice net.net


clear
echo -n "
CURRENT FOLDER: "
pwd
echo "
Press Enter to continue with the next example.
Press Ctrl+C to stop here.
"
read a


gschem inductor.sch &
gnetlist -g spice-sdb -o net.net inductor.sch
ngspice net.net

