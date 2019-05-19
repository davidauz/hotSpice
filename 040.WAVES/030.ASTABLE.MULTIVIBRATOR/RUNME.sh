#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear echo -n " 
CURRENT FOLDER: "
pwd

# feed ngspice with the commands to display the plot on screen
gschem circuit.NPN.sch &
gnetlist -g spice-sdb -o net.net circuit.NPN.sch

# first see normal ngspice plots
ngspice net.net

# feed ngspice with the commands to spit data for gnuplot
ngspice -b net.net 2>/dev/null | \
tail -n +26 | \
grep ^[0-9] > data.dat

awk '{print 1 " " $1 " " $3 "\n" 1 " " $1 " " 0 "\n" }' data.dat > cooked.dat
echo "" >> cooked.dat
awk '{print 1.2 " " $1 " " $4 "\n" 1.2 " " $1 " " 0 "\n" }' data.dat >> cooked.dat

gnuplot commands.gplot

