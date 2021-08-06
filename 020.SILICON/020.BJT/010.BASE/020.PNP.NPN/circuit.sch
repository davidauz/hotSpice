v 20130925 2
N 58800 51200 63400 51200 4
N 62600 53700 62800 53700 4
C 61700 53600 1 0 0 resistor-2.sym
{
T 62100 53950 5 10 0 0 0 0 1
device=RESISTOR
T 61900 53900 5 10 1 1 0 0 1
refdes=R1
T 61900 53400 5 10 1 1 0 0 1
value=10k
}
N 61700 53700 61600 53700 4
C 63500 51900 1 90 0 resistor-2.sym
{
T 63150 52300 5 10 0 0 90 0 1
device=RESISTOR
T 63200 52300 5 10 1 1 180 0 1
refdes=R3
T 63900 52300 5 10 1 1 180 0 1
value=1k
}
N 63400 52800 63400 53200 4
N 63400 51200 63400 51900 4
N 57800 53600 58200 53600 4
C 56900 53500 1 0 0 resistor-2.sym
{
T 57300 53850 5 10 0 0 0 0 1
device=RESISTOR
T 57100 53800 5 10 1 1 0 0 1
refdes=R2
T 57100 53300 5 10 1 1 0 0 1
value=11k
}
N 56900 53600 56700 53600 4
C 58900 54600 1 90 0 resistor-2.sym
{
T 58550 55000 5 10 0 0 90 0 1
device=RESISTOR
T 58600 55000 5 10 1 1 180 0 1
refdes=R4
T 59300 55000 5 10 1 1 180 0 1
value=1k
}
N 58800 55500 58800 56000 4
N 56700 56000 63400 56000 4
N 63400 56000 63400 54200 4
C 58200 53100 1 0 0 npn-3.sym
{
T 59100 53600 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 58200 53100 5 10 0 1 0 0 1
model-name=genericNPN
T 58700 53500 5 10 1 1 0 0 1
refdes=Q1
T 58200 53100 5 10 0 0 0 0 1
model=npn
}
N 58800 54600 58800 54100 4
N 58800 53100 58800 51200 4
C 62800 54200 1 180 1 pnp-3.sym
{
T 63700 53700 5 10 0 0 180 6 1
device=PNP_TRANSISTOR
T 63300 53800 5 10 1 1 180 6 1
refdes=Q2
T 62800 54200 5 10 0 0 180 6 1
model-name=genericPNP
T 62800 54200 5 10 0 0 180 6 1
model=pnp
}
C 53100 57200 1 0 0 vcc-1.sym
C 53200 56000 1 0 0 gnd-1.sym
C 53100 57200 1 270 0 voltage-3.sym
{
T 53800 57000 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 53600 56800 5 10 1 1 0 0 1
refdes=V1
T 53600 56600 5 10 1 1 0 0 1
value=DC 5V
}
C 58700 50900 1 0 0 gnd-1.sym
C 56500 56000 1 0 0 vcc-1.sym
C 54600 54000 1 0 0 spice-vc-switch-1.sym
{
T 56200 54700 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 54300 55400 5 10 0 1 0 0 1
model=VT=0.95 VH=0
T 55500 55200 5 12 1 1 0 0 1
refdes=S1
T 55300 54150 5 8 1 1 0 0 1
model-name=swmod
}
C 53400 55100 1 270 0 voltage-3.sym
{
T 54100 54900 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 53400 55100 5 10 0 0 0 0 1
value=pulse (0 5 0.1 0.001 0.001 0.1 0.5) DC 5
T 53400 55100 5 10 0 0 0 0 1
comment=initial value, pulsed value, delay time, rise time, fall time, pulse width,period
T 53900 54600 5 10 1 1 0 0 1
refdes=VP
}
N 53600 55100 54800 55100 4
{
T 53400 55200 5 10 1 1 0 0 1
netname=VPulse
}
N 54800 55100 54800 55000 4
N 53600 54200 54800 54200 4
N 54800 54200 54800 54400 4
C 53900 53500 1 0 0 gnd-1.sym
N 54000 53800 54000 54200 4
N 56300 55000 56700 55000 4
N 56700 55000 56700 56000 4
N 56300 54400 56700 54400 4
N 56700 54400 56700 53600 4
C 59500 51900 1 0 0 spice-vc-switch-1.sym
{
T 61100 52600 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 59200 53300 5 10 0 1 0 0 1
model=VT=0.95 VH=0
T 60400 53100 5 12 1 1 0 0 1
refdes=S2
T 60200 52050 5 8 1 1 0 0 1
model-name=swmod
}
N 61200 52900 61600 52900 4
N 61600 52900 61600 53700 4
N 61200 52300 61600 52300 4
N 61600 52300 61600 51200 4
N 59700 52900 54600 52900 4
N 54600 52900 54600 55100 4
N 59700 52300 54400 52300 4
N 54400 52300 54400 54200 4
N 63700 53200 63400 53000 4
{
T 63800 53200 5 10 1 1 0 0 1
netname=q2c
}
N 59100 54500 58800 54300 4
{
T 59200 54500 5 10 1 1 0 0 1
netname=q1c
}
N 62800 54100 62700 53700 4
{
T 62800 54200 5 10 1 1 0 0 1
netname=q2b
}
N 58000 54000 57900 53600 4
{
T 58000 54100 5 10 1 1 0 0 1
netname=q1b
}
T 55300 56700 9 14 1 0 0 0 4
This is not much an example.  It is a reminder of the necessity of giving
different names to models when there are different transistors in a circuit.
I.e. how not to waste whole days puzzling on something super simple that 
apparently just refuses to work.
T 52500 51100 9 10 1 0 0 0 2
In the plot some of the values are plotted adding some
constant valule just to make them easier to see.
C 64900 54600 1 0 0 spice-directive-1.sym
{
T 65000 54900 5 10 0 1 0 0 1
device=directive
T 65000 55000 5 10 1 1 0 0 1
refdes=A1
T 64900 51800 5 10 1 1 0 0 15
value=.options savecurrents
.control
save all
tran 1ms 1s
run
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Voltages"
plot q1b q1c q2b+6 q2c+6
set curplottitle="Currents"
plot @q1[ic] @q1[ib]  0.006+@q2[ic] 0.006+@q2[ib]
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
