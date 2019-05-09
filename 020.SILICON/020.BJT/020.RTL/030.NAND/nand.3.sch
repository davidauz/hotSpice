v 20130925 2
N 49400 55100 57500 55100 4
C 47700 53800 1 0 0 vcc-1.sym
{
T 47700 53800 5 10 0 0 0 0 1
netname=vcc
}
C 47700 53800 1 270 0 voltage-3.sym
{
T 48400 53600 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 48200 53400 5 10 1 1 0 0 1
refdes=V1
T 48200 53200 5 10 1 1 0 0 1
value=DC 5V
}
C 56900 52200 1 0 0 npn-3.sym
{
T 57800 52700 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 57800 52700 5 10 1 1 0 0 1
refdes=Q1
T 56900 52200 5 10 0 0 0 0 1
model-name=genericNpn
T 56900 52200 5 10 0 1 0 0 1
model=npn
}
N 55400 54300 55400 55100 4
N 55400 52700 55400 53700 4
C 53500 53300 1 0 0 spice-vc-switch-1.sym
{
T 55100 54000 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 54200 53450 5 8 0 1 0 0 1
model-name=swmod1
T 53500 53300 5 10 0 1 0 0 1
model=vt=1 vh=0.1 ron=100 roff=1e16
T 53500 53300 5 10 0 0 0 0 1
value=OFF
T 53500 53300 5 10 0 0 0 0 1
comment=Von Voff Ron Roff
T 54400 54500 5 12 1 1 0 0 1
refdes=S1
}
C 52800 54400 1 270 0 voltage-3.sym
{
T 52800 54400 5 10 0 0 0 0 1
value=pulse (0 5 0.1 0.001 0.001 0.1 0.35)
T 52800 54400 5 10 0 0 0 0 1
comment=initial V, pulsed V, delay t, rise t, fall t, pulse width,period
T 53300 53900 5 10 1 1 0 0 1
refdes=vP1
}
N 53000 54400 53700 54400 4
N 53700 54400 53700 54300 4
N 53000 53500 53700 53500 4
N 53700 53500 53700 53700 4
N 55200 54300 55400 54300 4
N 55200 53700 55400 53700 4
C 56900 50700 1 0 0 npn-3.sym
{
T 57800 51200 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 57800 51000 5 10 1 1 0 0 1
refdes=Q2
T 56900 50700 5 10 0 0 0 0 1
model-name=genericNpn
T 56900 50700 5 10 0 1 0 0 1
model=npn
}
N 57500 51700 57500 52300 4
N 57500 50000 57500 50700 4
C 50500 50800 1 0 0 spice-vc-switch-1.sym
{
T 52100 51500 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 51200 50950 5 8 0 1 0 0 1
model-name=swmod2
T 50500 50800 5 10 0 1 0 0 1
model=vt=1 vh=0.1 ron=100 roff=1e16
T 50500 50800 5 10 0 0 0 0 1
value=OFF
T 50500 50800 5 10 0 0 0 0 1
comment=Von Voff Ron Roff
T 51400 52000 5 12 1 1 0 0 1
refdes=S2
}
C 49800 51900 1 270 0 voltage-3.sym
{
T 49800 51900 5 10 0 0 0 0 1
value=pulse (0 5 0.15 0.001 0.001 0.1 0.35)
T 49800 51900 5 10 0 0 0 0 1
comment=initial V, pulsed V, delay t, rise t, fall t, pulse width,period
T 50300 51400 5 10 1 1 0 0 1
refdes=vP2
}
N 50000 51900 50700 51900 4
N 50700 51900 50700 51800 4
N 50000 51000 50700 51000 4
N 50700 51000 50700 51200 4
N 52500 51800 52500 55100 4
C 57600 53800 1 90 0 resistor-2.sym
{
T 57250 54200 5 10 0 0 90 0 1
device=RESISTOR
T 57600 54100 5 10 1 1 0 0 1
value=100
T 57100 54100 5 10 1 1 0 0 1
refdes=RL
}
N 57500 53500 58000 53700 4
{
T 58100 53700 5 10 1 1 0 0 1
netname=Vout
}
N 57500 53200 57500 53800 4
N 57500 54700 57500 55100 4
N 53400 54400 53700 54600 4
{
T 53800 54600 5 10 1 1 0 0 1
netname=Vi1
}
N 50300 51900 50600 52100 4
{
T 50700 52100 5 10 1 1 0 0 1
netname=Vi2
}
T 54100 53400 9 10 1 0 0 0 1
Ron=100
T 51100 50900 9 10 1 0 0 0 1
Ron=100
C 56900 49000 1 0 0 npn-3.sym
{
T 57800 49500 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 57800 49300 5 10 1 1 0 0 1
refdes=Q3
T 56900 49000 5 10 0 0 0 0 1
model-name=genericNpn
T 56900 49000 5 10 0 1 0 0 1
model=npn
}
C 57400 48200 1 0 0 gnd-1.sym
{
T 57400 48200 5 10 0 0 0 0 1
netname=0
}
C 47700 49100 1 0 0 spice-vc-switch-1.sym
{
T 49300 49800 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 48400 49250 5 8 0 1 0 0 1
model-name=swmod2
T 47700 49100 5 10 0 1 0 0 1
model=vt=1 vh=0.1 ron=100 roff=1e16
T 47700 49100 5 10 0 0 0 0 1
value=OFF
T 47700 49100 5 10 0 0 0 0 1
comment=Von Voff Ron Roff
T 48600 50300 5 12 1 1 0 0 1
refdes=S3
}
N 57500 48500 57500 49000 4
N 52200 51800 52500 51800 4
C 46900 50300 1 270 0 voltage-3.sym
{
T 46900 50300 5 10 0 0 0 0 1
value=pulse (0 5 0.17 0.001 0.001 0.1 0.35)
T 46900 50300 5 10 0 0 0 0 1
comment=initial V, pulsed V, delay t, rise t, fall t, pulse width,period
T 47400 49800 5 10 1 1 0 0 1
refdes=vP3
}
N 47100 50300 47900 50300 4
N 47900 50300 47900 50100 4
N 47100 49400 47900 49400 4
N 47900 49400 47900 49500 4
N 47400 50300 47700 50500 4
{
T 47800 50500 5 10 1 1 0 0 1
netname=Vi3
}
N 49400 50100 49400 55100 4
C 53200 53200 1 0 0 gnd-1.sym
{
T 53200 53200 5 10 0 0 0 0 1
netname=0
}
C 50200 50700 1 0 0 gnd-1.sym
{
T 50200 50700 5 10 0 0 0 0 1
netname=0
}
C 47300 49100 1 0 0 gnd-1.sym
{
T 47300 49100 5 10 0 0 0 0 1
netname=0
}
C 47800 52600 1 0 0 gnd-1.sym
{
T 47800 52600 5 10 0 0 0 0 1
netname=0
}
C 53000 55100 1 0 0 vcc-1.sym
{
T 53000 55100 5 10 0 0 0 0 1
netname=vcc
}
T 44300 54800 9 10 1 0 0 0 3
This is a NAND gate with three inputs.
It is here just because it will become useful later
for another schematic.
C 56700 52800 1 180 0 resistor-2.sym
{
T 56300 52450 5 10 0 0 180 0 1
device=RESISTOR
T 56000 52400 5 10 1 1 0 0 1
value=10k
T 56000 52900 5 10 1 1 0 0 1
refdes=R1
}
N 56900 52700 56700 52700 4
N 55800 52700 55400 52700 4
C 56700 51300 1 180 0 resistor-2.sym
{
T 56300 50950 5 10 0 0 180 0 1
device=RESISTOR
T 56000 50900 5 10 1 1 0 0 1
value=10k
T 56000 51400 5 10 1 1 0 0 1
refdes=R2
}
N 52200 51200 55800 51200 4
N 56700 51200 56900 51200 4
C 56700 49600 1 180 0 resistor-2.sym
{
T 56300 49250 5 10 0 0 180 0 1
device=RESISTOR
T 56000 49200 5 10 1 1 0 0 1
value=10k
T 56000 49700 5 10 1 1 0 0 1
refdes=R3
}
N 49400 49500 55800 49500 4
N 56700 49500 56900 49500 4
C 44300 52800 1 0 0 spice-directive-1.sym
{
T 44400 53100 5 10 0 1 0 0 1
device=directive
T 44400 53200 5 10 1 1 0 0 1
refdes=A1
T 44300 51100 5 10 1 1 0 0 9
value=.control
tran 1ms 1s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot vi1 6+vi2 12+vi3 18+vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
