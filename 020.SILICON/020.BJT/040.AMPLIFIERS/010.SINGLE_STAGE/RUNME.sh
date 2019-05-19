#!/bin/sh

rm -f *~ *.net *.raw *~ *\.dat \#*
find . -type d -empty -delete

# this example needs a device model
HOTSPICEHOME=$( pwd | sed 's/hotspice.*/hotspice/' )
cp $HOTSPICEHOME/models/2N5551.mod .

clear
echo -n "
CURRENT FOLDER: "
pwd

gschem common.base.sch &
gnetlist -g spice-sdb -o net.net common.base.sch
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


gschem common.collector.sch &
gnetlist -g spice-sdb -o net.net common.collector.sch
ngspice net.net



clear
echo -n "
CURRENT FOLDER: "
echo "
Press Enter to continue with the next example.
Press Ctrl+C to stop here.
"
read a

gschem common.emitter.sch &
gnetlist -g spice-sdb -o net.net common.emitter.sch
ngspice net.net

