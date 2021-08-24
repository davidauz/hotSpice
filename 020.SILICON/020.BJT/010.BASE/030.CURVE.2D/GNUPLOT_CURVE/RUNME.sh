#!/bin/sh
# this script does a little processing of the ngspice data 
# to draw a gnuplot picture.
rm -f *~ *.net *.raw *~ *.dat \#*
find . -type d -empty -delete


# 1) translate gschem schematic into ngspice netlist
gnetlist -g spice-sdb -o net.net  ../TRANSISTOR.CURVE.sch

# 2) run ngspice in batch mode to produce the raw data
ngspice -b net.net >raw.dat 2>/dev/null

# first split the ngspice results into the two data sets
# this will filter out the data about the Early effect plot.
awk '
BEGIN{status=0}
{
	if("early"==$1 && "effect"==$2)
		status=1
	if("ideal"==$1 && "transistor"==$2)
		status=0
	if(1==status)
		print $0
}' raw.dat > early.dat

awk '
BEGIN{status=0}
{
	if("ideal"==$1 && "transistor"==$2)
		status=1
	if(1==status)
		print $0
}' raw.dat > ideal.dat


# 3) gnuplot needs an empty row between series to tell one row from the other.
# Here we find out the min sweep value: this is the place where a new
# series starts
ISWEEP_MIN=$(cat early.dat | grep "^[0-9]" | head -1 | awk '{print $2}')

# 4) convert ngspice output to gnuplot format.
# the 'grep' selects lines starting with numbers.
# the 'awk' converts Amperes to mA.
grep '^[0-9]' early.dat | \
awk '{print $1 " " $2 " " $3 " " 1000*$4}' | \
sed "s/^[0-9].*$ISWEEP_MIN.*[0-9]/\n&/" > cooked.early.dat


grep '^[0-9]' ideal.dat | \
awk '{print $1 " " $2 " " $3 " " 1000*$4}' | \
sed "s/^[0-9].*$ISWEEP_MIN.*[0-9]/\n&/" > cooked.ideal.dat


# 5) launch gnuplot
gnuplot commands.gplot

