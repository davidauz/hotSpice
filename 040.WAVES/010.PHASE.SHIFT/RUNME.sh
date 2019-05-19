#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n " CURRENT FOLDER: "
pwd

gschem phase.shift.oscillator.sch &
gnetlist -g spice-sdb -o net.net phase.shift.oscillator.sch
ngspice net.net

