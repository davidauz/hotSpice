#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd



gschem one.switch.sch &
gnetlist -g spice-sdb -o net.net one.switch.sch
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


gschem 2.switches.sch &
gnetlist -g spice-sdb -o net.net 2.switches.sch
ngspice net.net


