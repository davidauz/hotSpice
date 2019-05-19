#!/bin/sh


rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear

echo -n " CURRENT FOLDER: "
pwd


gschem NOT.gate.sch &
gnetlist -g spice-sdb -o net.net NOT.gate.sch
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


gschem not.SUBCKT.sch test-not.sch &
gnetlist -g spice-sdb -o not.SUBCKT.cir not.SUBCKT.sch
cp not.SUBCKT.cir ../../../../subckts
gnetlist -g spice-sdb -o net.net test-not.sch
ngspice net.net

