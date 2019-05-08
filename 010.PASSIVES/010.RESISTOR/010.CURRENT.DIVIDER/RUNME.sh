#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd

gschem circuit.sch  &
gnetlist -g spice-sdb -o net.net circuit.sch
ngspice net.net


