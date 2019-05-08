#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd


gschem inductor.sch &
gnetlist -g spice-sdb -o net.net inductor.sch
ngspice net.net

