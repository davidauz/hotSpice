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
N 52400 50100 52400 50900 4
{
T 52600 50200 5 10 1 1 0 0 1
netname=b1
}
N 52400 50900 53600 50900 4
N 54200 51400 54200 52700 4
T 48800 50900 9 10 1 0 0 0 2
Like the 2D curve, this is a simple dc
sweep of base current and VCE voltage
N 54200 52700 57000 52700 4
T 48000 51700 9 10 1 0 0 0 8
Exciting times!

The characteristic curve of a BJT is a natural candidate for a 3D plot.
Why?
Heavens, it is basically a number dependent on TWO sets of coordinates:
the base current and the emitter-collector voltage.
It screams "I am a surface!  Please plot me in 3D!"

C 58100 53000 1 0 0 spice-directive-1.sym
{
T 58200 53300 5 10 0 1 0 0 1
device=directive
T 58200 53400 5 10 1 1 0 0 1
refdes=A1
T 58000 52000 5 10 1 1 0 0 6
value=.options savecurrents
.print DC @q1[ib] @q1[ic]
.control
save all @q1[ib] @q1[ic]
dc vce -0.05 1v 0.01 ib 0 1.5ma 0.1ma
.endc
}
T 59800 50000 9 10 1 0 0 0 7
Here we are using the results of the simulation to
draw a gnuplot chart.
ngspice is being run in batch mode: it does not show 
any plot, but instead writes numbers in a file.
Hint: when the gnuplot shows up, try clicking and dragging
the plot area for a nice 3D effect.
Remember it's 'q' to exit the gnuplot.
L 59700 51000 58800 52000 3 0 0 0 -1 -1
L 58900 52000 58800 52000 3 0 0 0 -1 -1
L 58800 51900 58800 52000 3 0 0 0 -1 -1
