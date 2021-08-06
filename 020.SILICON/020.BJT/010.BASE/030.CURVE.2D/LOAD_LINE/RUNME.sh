#!/bin/sh
# this script does a little processing of the ngspice data 
# to draw a gnuplot picture.
rm -f *~ *.net *.raw *~ *.dat \#*
find . -type d -empty -delete

GNUPLOT_CURVE_DIR="../GNUPLOT_CURVE"
PLOT_DATA="$GNUPLOT_CURVE_DIR/cooked.dat"

[ ! -f $PLOT_DATA ]  && {
	echo "You need to run the example in $GNUPLOT_CURVE_DIR first"
	return 255
}

# Use data from GNUPLOT_CURVE
cp $PLOT_DATA .

# launch gnuplot
gnuplot commands.gplot

