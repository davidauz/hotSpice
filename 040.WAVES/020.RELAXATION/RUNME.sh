#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear

echo -n " CURRENT FOLDER: "
pwd

cp ../../models/2N5551.mod .
gschem schmitt.inv.SUBCKT.audio.sch sawtooth.generator.sch &
gnetlist -g spice-sdb -o schmitt.inv.SUBCKT.audio.cir schmitt.inv.SUBCKT.audio.sch
gnetlist -g spice-sdb -o net.net sawtooth.generator.sch
ngspice net.net

