#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd

gschem TRANSISTOR.CURVE.sch &
gnetlist -g spice-sdb -o net.net  TRANSISTOR.CURVE.sch
# the -b switch stands for 'batch': just spit out the numbers
ngspice -b -o raw.dat net.net > /dev/null



# gnuplot needs an empty row between series to tell one row from the other
# first find out the min sweep value, that is the place where a new
# series starts
ISWEEP_MIN=$(cat raw.dat | grep "^[0-9]" | head -1 | awk '{print $2}')

# use min sweep value to insert blank row between series
grep '^[0-9]' raw.dat | sed "s/.*$ISWEEP_MIN.*/\n&/" > cooked.dat

gnuplot commands.gplot

