#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd



gschem circuit.sch &
gnetlist -g spice-sdb -o net.net circuit.sch
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


gschem circuit.cap.sch &
gnetlist -g spice-sdb -o net.net circuit.cap.sch
ngspice net.net

