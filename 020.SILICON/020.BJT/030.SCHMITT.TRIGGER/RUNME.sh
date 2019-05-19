#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear

echo -n " 
CURRENT FOLDER: "
pwd

gschem schmitt.00.q2.sch &
gnetlist -g spice-sdb -o net.net schmitt.00.q2.sch
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


gschem schmitt.01.q1q2.sch &
gnetlist -g spice-sdb -o net.net schmitt.01.q1q2.sch
ngspice net.net



clear 
echo -n " CURRENT FOLDER: "
pwd
echo "
Press Enter to continue with the next example.
Press Ctrl+C to stop here.
"
read a



gschem schmitt.02.final.sch &
cp ../../../models/2N5551.mod .
gnetlist -g spice-sdb -o net.net schmitt.02.final.sch
ngspice net.net


clear 
echo -n " CURRENT FOLDER: "
pwd
echo "
Press Enter to continue with the next example.
Press Ctrl+C to stop here.
"
read a

clear
gschem schmitt.inverting.sch &
cp ../../../models/2N5551.mod .
gnetlist -g spice-sdb -o net.net schmitt.inverting.sch
ngspice net.net

clear
echo -n " CURRENT FOLDER: "
pwd
echo "
Press Enter to continue with the next example.
Press Ctrl+C to stop here.
"
read a


gschem schmitt.inverting.SUBCKT.sch test.schmitt.inv.SUBCKT.sch &
cp ../../../models/2N5551.mod .
gnetlist -g spice-sdb -o schmitt.inverting.SUBCKT.cir schmitt.inverting.SUBCKT.sch
cp schmitt.inverting.SUBCKT.cir ../../../subckts
gnetlist -g spice-sdb -o net.net test.schmitt.inv.SUBCKT.sch
ngspice net.net

