#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

clear

echo -n " CURRENT FOLDER: "
pwd

gschem RC.phase.shift.sch &
gnetlist -g spice-sdb -o net.net RC.phase.shift.sch
ngspice net.net



clear
echo -n " CURRENT FOLDER: "
pwd
echo "
Press Enter to continue with the next example.
Press Ctrl+C to stop here.
"
read a


gschem CR.phase.shift.sch &
gnetlist -g spice-sdb -o net.net CR.phase.shift.sch
ngspice net.net


