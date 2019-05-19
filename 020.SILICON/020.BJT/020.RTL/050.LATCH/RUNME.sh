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

clear
echo -n "
CURRENT FOLDER: "
pwd
echo "
Press Enter to continue with the next example.
Press Ctrl+C to stop here.
"
read a

gschem test-latch.sch latch.SUBCKT.sch &
cp ../../../../subckts/not.SUBCKT.cir .
gnetlist -g spice-sdb -o latch.SUBCKT.cir latch.SUBCKT.sch
gnetlist -g spice-sdb -o test-latch.net test-latch.sch
ngspice test-latch.net

