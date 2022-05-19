#!/bin/sh
# This is a little script good for almost every schematic in here.
# If the current folder has one schematic only, the script needs no arguments.
# If there is more than one schematic, you'll have to give the file name as an argument.
# You can adjust your PATH to point here in order to have it at hand,
# or symlink it in some place already in PATH like:
# ln -s RUN_SIMULATION.sh /usr/local/bin

# ta-daaan
clear
echo -n "
CURRENT FOLDER: "
pwd

# delete useless stuff
rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

# see how many schematics are in there
NUM_FILES=$(ls *sch | wc -l)
[ 1 -eq $NUM_FILES ] && {
	lepton-schematic *.sch  &
	lepton-netlist -g spice-sdb -o net.net *.sch
	ngspice net.net
	return
}

# There is more than one schematic in this folder.
# do we have an argument?

[ 0 -eq $# ] && {
	echo "Need file name"
	return
}

lepton-schematic $1  &
lepton-netlist -g spice-sdb -o net.net $1
ngspice net.net

