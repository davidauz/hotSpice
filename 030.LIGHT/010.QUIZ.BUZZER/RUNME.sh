#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear
echo -n " CURRENT FOLDER: "
pwd

gschem quiz.buzzer.sch &

# check if every piece is in place
SUBCKT_DIR="../../subckts"
for i in nand.3.SUBCKT.cir not.SUBCKT.cir sr.SUBCKT.cir; do
	if [ ! -f $SUBCKT_DIR/$i ] ; then
		echo "Missing file '$i'!  exiting"
		exit 255
	fi
done

gnetlist -g spice-sdb -o net.net quiz.buzzer.sch
ngspice net.net

