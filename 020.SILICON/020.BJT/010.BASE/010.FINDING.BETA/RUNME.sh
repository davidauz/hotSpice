#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd

gschem FINDING.BETA.sch &
gnetlist -g spice-sdb -o net.net FINDING.BETA.sch > /dev/null
ngspice net.net

