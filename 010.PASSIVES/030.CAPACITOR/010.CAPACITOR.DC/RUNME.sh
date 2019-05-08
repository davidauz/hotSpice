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


