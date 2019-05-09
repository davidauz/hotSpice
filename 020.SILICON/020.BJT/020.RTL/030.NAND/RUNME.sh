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

gschem nand.3.sch &
gnetlist -g spice-sdb -o net.net nand.3.sch
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


gschem nand.3.SUBCKT.sch nand.3.test.sch &
gnetlist -g spice-sdb -o ../../../../subckts/nand.3.SUBCKT.cir nand.3.SUBCKT.sch
gnetlist -g spice-sdb -o net.net nand.3.test.sch
ngspice net.net

