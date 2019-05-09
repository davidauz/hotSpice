#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear

echo -n " CURRENT FOLDER: "
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

gschem sr.SUBCKT.sch test-sr.sch &
gnetlist -g spice-sdb -o ../../../../subckts/sr.SUBCKT.cir sr.SUBCKT.sch
gnetlist -g spice-sdb -o net.net  test-sr.sch
ngspice net.net

