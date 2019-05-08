#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd

gschem parallel.sch &
gnetlist -g spice-sdb -o net.net parallel.sch
ngspice net.net


