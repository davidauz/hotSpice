#!/bin/sh

rm -f *~ *.net *.raw *~ *.dat \#*
find . -type d -empty -delete

clear
echo -n "
CURRENT FOLDER: "
pwd


gschem TRANSISTOR.CURVE.sch &
gnetlist -g spice-sdb -o net.net  TRANSISTOR.CURVE.sch
ngspice net.net

clear
echo -n "
CURRENT FOLDER: "
pwd
echo "
Press Enter to continue with the next example.
Press Ctrl+C to stop here.
"
read a

# same plot using gnuplot
ngspice -b net.net >raw.dat 2>/dev/null

# gnuplot needs an empty row between series to tell one row from the other.
# First find out the min sweep value, that is the place where a new
# series starts
ISWEEP_MIN=$(cat raw.dat | grep "^[0-9]" | head -1 | awk '{print $2}')

# convert ngspice output to gnuplot format.
# grep selects lines starting with numbers.
# awk converts Amperes to mA.
grep '^[0-9]' raw.dat | \
awk '{print $1 " " $2 " " $3 " " 1000*$4}' | \
sed "s/^[0-9].*$ISWEEP_MIN.*[0-9]/\n&/" > cooked.dat

gnuplot commands.gplot

