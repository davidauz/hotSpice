v 20130925 2
C 53600 50400 1 0 0 npn-3.sym
{
T 54500 50900 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 54500 50900 5 10 1 1 0 0 1
refdes=Q1
T 53600 50400 5 10 0 0 0 0 1
model-name=generic
T 53600 50400 5 10 0 0 0 0 1
model=npn
}
N 52400 48500 57000 48500 4
{
T 56400 48300 5 10 1 1 0 0 1
netname=0
}
N 57000 48500 57000 49900 4
C 56700 49900 1 0 0 vpulse-1.sym
{
T 56200 50550 5 10 1 1 0 0 1
refdes=vce
T 57400 50750 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 56000 51950 5 10 0 2 0 0 1
value=DC 10V
}
C 52700 50200 1 180 0 vdc-1.sym
{
T 52800 49650 5 10 1 1 0 0 1
refdes=ib
T 52000 49350 5 10 0 0 180 0 1
device=VOLTAGE_SOURCE
T 51600 49600 5 10 1 1 0 0 1
value=1mA
}
N 57000 51100 57000 52700 4
N 52400 49000 52400 48500 4
N 54200 48500 54200 50400 4
N 52400 50900 53600 50900 4
N 54200 51400 54200 52700 4
N 54200 52700 57000 52700 4
T 48800 51300 9 10 1 0 0 0 16
Here we begin getting our hands dirty.

This plots the characteristic curve of a transistor, 
as it is seen everywhere.  

The circuit uses the ngspice default model,
nothing fancy.  It is possible to set up
parameters to follow closely the characteristics
of a real transistor.

Visit the subfolders and run the RUNME.sh scripts
there for some nice gnuplot pictures generated
using data from this schematic.

p.s. you'll see a 'ghost' saturation zone that will be 
explained later.
T 49300 49000 9 10 1 0 0 0 2
This is the base current source, 
performing swipes on a range.
T 57400 50500 9 10 1 0 0 0 2
This is the VCE voltage source,
also performing swipes.
T 54000 47200 9 10 1 0 0 0 3
The plot has vce on the X axis and the 
resulting collector current on the Y, one
line for every step of the ib swipe.
C 57600 53900 1 0 0 spice-directive-1.sym
{
T 57700 54200 5 10 0 1 0 0 1
device=directive
T 57700 54300 5 10 1 1 0 0 1
refdes=A1
T 57600 51700 5 10 1 1 0 0 12
value=.options savecurrents
.print DC @q1[ib] @q1[ic]
.control
save all @q1[ib] @q1[ic]
dc vce -0.05 1v 0.01 ib 0 1.5ma 0.1ma
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot @q1[ic]
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 52000 50900 9 10 1 0 0 0 1
base current Ib
L 53200 51000 53300 50900 3 0 0 0 -1 -1
L 53200 50800 53300 50900 3 0 0 0 -1 -1
T 53800 51800 9 10 1 0 0 0 2
collector
current
L 54100 51600 54200 51500 3 0 0 0 -1 -1
L 54300 51600 54200 51500 3 0 0 0 -1 -1
A 54500 51000 900 270 180 3 0 0 0 -1 -1
L 54500 51900 54600 52000 3 0 0 0 -1 -1
L 54500 51900 54600 51800 3 0 0 0 -1 -1
L 54600 50200 54500 50100 3 0 0 0 -1 -1
L 54600 50000 54500 50100 3 0 0 0 -1 -1
T 55300 51400 9 10 1 0 0 0 1
VCE
N 52400 50200 52400 50900 4
