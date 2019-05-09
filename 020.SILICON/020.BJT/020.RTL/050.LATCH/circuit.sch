v 20130925 2
N 61500 46800 63700 46800 4
{
T 61500 46800 5 10 1 1 0 0 1
netname=0
}
N 62900 49300 63100 49300 4
C 62000 49200 1 0 0 resistor-2.sym
{
T 62400 49550 5 10 0 0 0 0 1
device=RESISTOR
T 62300 49500 5 10 1 1 0 0 1
refdes=R1
T 62300 49000 5 10 1 1 0 0 1
value=10k
}
C 63800 47200 1 90 0 resistor-2.sym
{
T 63450 47600 5 10 0 0 90 0 1
device=RESISTOR
T 63500 47600 5 10 1 1 180 0 1
refdes=R3
T 64000 47600 5 10 1 1 180 0 1
value=1k
}
N 63700 48100 63700 48800 4
N 63700 46800 63700 47200 4
N 60700 48200 60900 48200 4
C 59800 48100 1 0 0 resistor-2.sym
{
T 60200 48450 5 10 0 0 0 0 1
device=RESISTOR
T 60000 48400 5 10 1 1 0 0 1
refdes=R2
T 60000 47900 5 10 1 1 0 0 1
value=10k
}
N 59800 48200 59400 48200 4
C 61600 50000 1 90 0 resistor-2.sym
{
T 61250 50400 5 10 0 0 90 0 1
device=RESISTOR
T 61300 50400 5 10 1 1 180 0 1
refdes=R4
T 62000 50400 5 10 1 1 180 0 1
value=1k
}
C 61400 46500 1 0 0 gnd-1.sym
N 59400 51600 63700 51600 4
N 63700 51600 63700 49800 4
C 60900 47700 1 0 0 npn-3.sym
{
T 61800 48200 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 60900 47700 5 10 0 1 0 0 1
model-name=genericNPN
T 60900 47700 5 10 0 0 0 0 1
model=npn
T 61400 48100 5 10 1 1 0 0 1
refdes=Q1
}
N 61500 50000 61500 48700 4
N 61500 47700 61500 46800 4
C 63100 49800 1 180 1 pnp-3.sym
{
T 64000 49300 5 10 0 0 180 6 1
device=PNP_TRANSISTOR
T 63100 49800 5 10 0 0 180 6 1
model-name=genericPNP
T 63100 49800 5 10 0 0 180 6 1
model=pnp
T 63600 49400 5 10 1 1 180 6 1
refdes=Q2
}
C 56900 49700 1 0 0 spice-vc-switch-1.sym
{
T 58500 50400 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 56600 51100 5 10 0 1 0 0 1
model=VT=0.95 VH=0
T 57800 50900 5 12 1 1 0 0 1
refdes=S1
T 57600 49850 5 8 1 1 0 0 1
model-name=swmod
}
C 56100 50800 1 270 0 voltage-3.sym
{
T 56800 50600 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 56100 50800 5 10 0 0 0 0 1
value=pulse (0 5 0.1 0.001 0.001 0.1 0.5) DC 5
T 56100 50800 5 10 0 0 0 0 1
comment=initial value, pulsed value, delay time, rise time, fall time, pulse width,period
T 56600 50300 5 10 1 1 0 0 1
refdes=VP
}
N 56300 50800 57100 50800 4
{
T 56100 50900 5 10 1 1 0 0 1
netname=VPulse
}
N 57100 50800 57100 50700 4
N 56300 49900 57100 49900 4
N 57100 49900 57100 50100 4
C 56600 49200 1 0 0 gnd-1.sym
N 56700 49500 56700 49900 4
N 58600 50700 59400 50700 4
N 58600 50100 59400 50100 4
N 59400 45900 59400 50100 4
N 59400 50700 59400 51600 4
N 61500 50900 61500 51600 4
N 62000 49300 61500 49300 4
N 59400 45900 64800 45900 4
C 67000 49200 1 0 0 vcc-1.sym
C 67100 48000 1 0 0 gnd-1.sym
C 67000 49200 1 270 0 voltage-3.sym
{
T 67700 49000 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 67500 48800 5 10 1 1 0 0 1
refdes=V1
T 67500 48600 5 10 1 1 0 0 1
value=DC 5V
}
C 61300 51600 1 0 0 vcc-1.sym
N 64800 45900 64800 48400 4
N 64800 48400 63700 48400 4
N 64800 48400 65400 48800 4
{
T 65200 48900 5 10 1 1 0 0 1
netname=Vout
}
T 60800 49000 9 10 1 0 0 0 3
first
NOT
gate
T 58000 45900 9 10 1 0 0 0 1
feedback
T 63100 49700 9 10 1 0 0 0 3
2nd
NOT
gate
T 54500 51600 9 10 1 0 0 0 1
Voltage source giving impulses
T 56900 47300 9 10 1 0 0 0 1
voltage controlled switch
L 57800 47600 57800 49700 3 0 0 0 -1 -1
L 57700 49600 57800 49700 3 0 0 0 -1 -1
L 57900 49600 57800 49700 3 0 0 0 -1 -1
L 58800 46000 59300 46000 3 0 0 0 -1 -1
L 59200 46100 59300 46000 3 0 0 0 -1 -1
L 59200 45900 59300 46000 3 0 0 0 -1 -1
T 52700 46100 9 10 1 0 0 0 18
A latch is basically two NOT gates.  
This is useful when you want to turn on
something with one impulse, and after that
you need it to stay on forever.

Step 1) When the first impulse arrives, Q1 starts
acting as a NOT gate, going to HIGH and letting 
current flow through R1 and so bringing up Q2
too.  

Step 2) Q2 starts conducting too, and part of the
signal is brought back to the base of Q1, creating 
a loop.
At this point there is no more need of the signal: 
Q2 will stay on forever.

The plot from ngspice shows the impulses in red
and the output in blue.
B 59700 47400 2200 2400 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
B 62000 48100 2200 2400 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 65400 52100 1 0 0 spice-directive-1.sym
{
T 65500 52400 5 10 0 1 0 0 1
device=directive
T 65500 52500 5 10 1 1 0 0 1
refdes=A1
T 65400 50300 5 10 1 1 0 0 10
value=.control
tran 1ms 1s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot vpulse vout
echo "Two transistors latched together"
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
L 55400 51500 56100 50600 3 0 0 0 -1 -1
L 56100 50700 56100 50600 3 0 0 0 -1 -1
L 56000 50600 56100 50600 3 0 0 0 -1 -1
