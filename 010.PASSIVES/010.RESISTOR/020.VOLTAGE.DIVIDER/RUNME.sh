#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd



gschem voltage.divider.sch &
gnetlist -g spice-sdb -o net.net voltage.divider.sch
ngspice net.net


