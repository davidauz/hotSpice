v 20130925 2
C 52700 51100 1 0 0 npn-3.sym
{
T 53600 51600 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 53600 51600 5 10 1 1 0 0 1
refdes=Q1
T 52700 51100 5 10 0 0 0 0 1
model-name=generic
T 52700 51100 5 10 0 0 0 0 1
model=npn
T 52700 51100 5 10 0 0 0 0 1
graphical=1
}
N 51500 49200 56100 49200 4
{
T 55500 49000 5 10 1 1 0 0 1
netname=0
}
N 56100 49200 56100 49600 4
C 55800 49600 1 0 0 vpulse-1.sym
{
T 55600 49850 5 10 1 1 0 0 1
refdes=V1
T 56500 50450 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 55100 51650 5 10 0 2 0 0 1
value=DC 10V
T 55800 49600 5 10 0 0 0 0 1
graphical=1
}
N 53300 49200 53300 51100 4
N 51500 51600 52700 51600 4
N 53300 52100 53300 53400 4
N 53300 53400 56100 53400 4
T 56800 53200 9 10 1 0 0 0 2
The circuit for drawing the transistor characteristic curve has no load applied.
Voltage swipes are applied on CE, and current swipes are applied on BE.
T 52600 52400 9 10 1 0 0 0 2
collector
current
L 53200 52300 53300 52200 3 0 0 0 -1 -1
L 53400 52300 53300 52200 3 0 0 0 -1 -1
A 53600 51700 900 270 180 3 0 0 0 -1 -1
L 53600 52600 53700 52700 3 0 0 0 -1 -1
L 53600 52600 53700 52500 3 0 0 0 -1 -1
L 53700 50900 53600 50800 3 0 0 0 -1 -1
L 53700 50700 53600 50800 3 0 0 0 -1 -1
T 54400 52100 9 10 1 0 0 0 1
VCE
C 56000 52500 1 270 0 resistor-2.sym
{
T 56350 52100 5 10 0 0 270 0 1
device=RESISTOR
T 55800 52000 5 10 1 1 0 0 1
value=8
T 56300 52000 5 10 1 1 0 0 1
refdes=RL
T 56000 52500 5 10 0 0 0 0 1
graphical=1
}
N 56100 52500 56100 53400 4
N 56100 51600 56100 50800 4
N 53700 53400 54200 53900 4
{
T 53800 53800 5 10 1 1 0 0 1
netname=Vt
}
T 51100 50400 9 10 1 0 0 0 1
NO SIGNAL
T 56800 51000 9 10 1 0 0 0 10
To draw a load line, we (surprise!) need a load (RL).
Moreover, no signal is supposed to be applied to the base.
The CE voltage considered is the maximuym amount applied 
in the swipes.
Now let's consider two extreme cases.
Case (1): What happens when the transistor is not conducting?
The voltage at Vt (that's Vce) will be equal to V1 (1V).
Case (2): When the transistor is Fully conducting, how much current
will be flowing through RL?
I(RL)=V1/RL=1/8=125 mA
T 56800 49700 9 10 1 0 0 0 4
Now let's use the first value (a voltage) to pin a point on the 
X axis (that of voltages), and the second value (a current) to set
a point on the Y axis (currents).
Connect the two and voila!  here is your load line.
N 51500 51600 51500 51000 4
N 51500 49200 51500 50200 4
