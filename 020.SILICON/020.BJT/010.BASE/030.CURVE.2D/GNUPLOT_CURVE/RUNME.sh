#!/bin/sh
# this script does a little processing of the ngspice data 
# to draw a gnuplot picture.
rm -f *~ *.net *.raw *~ *.dat \#*
find . -type d -empty -delete


# 1) translate gschem schematic into ngspice netlist
gnetlist -g spice-sdb -o net.net  ../TRANSISTOR.CURVE.sch

# 2) run ngspice in batch mode to produce the raw data
ngspice -b net.net >raw.dat 2>/dev/null

# 3) gnuplot needs an empty row between series to tell one row from the other.
# Here we find out the min sweep value: this is the place where a new
# series starts
ISWEEP_MIN=$(cat raw.dat | grep "^[0-9]" | head -1 | awk '{print $2}')

# 4) convert ngspice output to gnuplot format.
# grep selects lines starting with numbers.
# awk converts Amperes to mA.
grep '^[0-9]' raw.dat | \
awk '{print $1 " " $2 " " $3 " " 1000*$4}' | \
sed "s/^[0-9].*$ISWEEP_MIN.*[0-9]/\n&/" > cooked.dat

# 5) launch gnuplot
gnuplot commands.gplot

