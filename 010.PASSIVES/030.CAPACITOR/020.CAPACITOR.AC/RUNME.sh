#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd


gschem capacitor.AC.sch &
gnetlist -g spice-sdb -o net.net capacitor.AC.sch
ngspice net.net

