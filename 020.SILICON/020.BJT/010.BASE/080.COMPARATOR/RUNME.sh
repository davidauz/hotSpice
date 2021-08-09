#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear

echo -n " CURRENT FOLDER: "
pwd

gschem CIPE.sch &
gnetlist -g spice-sdb -o net.net CIPE.sch
ngspice net.net


