#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd


gschem coupled.inductors.sch &
gnetlist -g spice-sdb -o net.net coupled.inductors.sch
ngspice net.net

