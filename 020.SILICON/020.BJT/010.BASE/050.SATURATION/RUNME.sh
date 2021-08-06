#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

gnetlist -g spice-sdb -o net.net resistor.curve.sch
# the -b switch stands for 'batch': just spit out the numbers
ngspice -b net.net > raw1.dat

# gnuplot needs an empty row between series to tell one row from the other
# first find out the min sweep value
ISWEEP_MIN=$(cat raw1.dat | grep "^[0-9]" | head -1 | awk '{print $2}')
# use min sweep value to insert blank row
grep '^[0-9]' raw1.dat | sed "s/.*$ISWEEP_MIN.*/\n&/" > resistor.curve.dat

gnuplot commands.gplot


clear
echo -n "
CURRENT FOLDER: "
pwd
echo "
Press Enter to continue with the next example.
Press Ctrl+C to stop here.
"
read a

gnetlist -g spice-sdb -o net.net transistor.load.sch
# the -b switch stands for 'batch': no plot, just spit out the numbers
ngspice -b net.net > transistor.load.raw

# use same min sweep value as before for blank row
grep '^[0-9]' transistor.load.raw | sed "s/.*$ISWEEP_MIN.*/\n&/" > transistor.load.dat

gnuplot transistor.load.gp

