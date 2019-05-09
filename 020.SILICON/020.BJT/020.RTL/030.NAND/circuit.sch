v 20130925 2
C 58200 55100 1 0 0 vcc-1.sym
N 53600 55100 58400 55100 4
C 51700 54700 1 0 0 vcc-1.sym
C 51800 53500 1 0 0 gnd-1.sym
C 51700 54700 1 270 0 voltage-3.sym
{
T 52400 54500 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 52200 54300 5 10 1 1 0 0 1
refdes=V1
T 52200 54100 5 10 1 1 0 0 1
value=DC 5V
}
C 57800 52200 1 0 0 npn-3.sym
{
T 58700 52700 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 58700 52700 5 10 1 1 0 0 1
refdes=Q1
T 57800 52200 5 10 0 0 0 0 1
model-name=genNpn1
T 57800 52200 5 10 0 1 0 0 1
model=npn (bf=100)
}
N 58400 52200 58400 51900 4
C 54600 53300 1 0 0 spice-vc-switch-1.sym
{
T 56200 54000 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 55300 53450 5 8 0 1 0 0 1
model-name=swmod1
T 54600 53300 5 10 0 1 0 0 1
model=vt=1 vh=0.1 ron=500 roff=1e16
T 54600 53300 5 10 0 0 0 0 1
value=OFF
T 54600 53300 5 10 0 0 0 0 1
comment=Von Voff Ron Roff
T 55500 54500 5 12 1 1 0 0 1
refdes=S1
}
C 53900 54400 1 270 0 voltage-3.sym
{
T 53900 54400 5 10 0 0 0 0 1
value=pulse (0 5 0.1 0.001 0.001 0.1 0.35)
T 53900 54400 5 10 0 0 0 0 1
comment=initial V, pulsed V, delay t, rise t, fall t, pulse width,period
T 54400 53900 5 10 1 1 0 0 1
refdes=vP1
}
N 54100 54400 54800 54400 4
N 54800 54400 54800 54300 4
N 54100 53500 54800 53500 4
N 54800 53500 54800 53700 4
C 54300 53200 1 0 0 gnd-1.sym
N 56300 54300 56500 54300 4
N 56300 53700 56500 53700 4
C 51900 51000 1 0 0 spice-vc-switch-1.sym
{
T 53500 51700 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 52600 51150 5 8 0 1 0 0 1
model-name=swmod2
T 51900 51000 5 10 0 1 0 0 1
model=vt=1 vh=0.1 ron=1500 roff=1e16
T 51900 51000 5 10 0 0 0 0 1
value=OFF
T 51900 51000 5 10 0 0 0 0 1
comment=Von Voff Ron Roff
T 52800 52200 5 12 1 1 0 0 1
refdes=S2
}
C 51200 52100 1 270 0 voltage-3.sym
{
T 51200 52100 5 10 0 0 0 0 1
value=pulse (0 5 0.15 0.001 0.001 0.17 0.3)
T 51200 52100 5 10 0 0 0 0 1
comment=initial V, pulsed V, delay t, rise t, fall t, pulse width,period
T 51700 51600 5 10 1 1 0 0 1
refdes=vP2
}
N 51400 52100 52100 52100 4
N 52100 52100 52100 52000 4
N 51400 51200 52100 51200 4
N 52100 51200 52100 51400 4
C 51600 50900 1 0 0 gnd-1.sym
N 54500 54400 54800 54600 4
{
T 54900 54600 5 10 1 1 0 0 1
netname=Vi1
}
N 51700 52100 52000 52300 4
{
T 52100 52300 5 10 1 1 0 0 1
netname=Vi2
}
N 56500 53700 56500 52700 4
N 56500 54300 56500 55100 4
C 58300 50400 1 0 0 gnd-1.sym
N 58400 50700 58400 50900 4
C 57800 50900 1 0 0 npn-3.sym
{
T 58700 51400 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 58700 51400 5 10 1 1 0 0 1
refdes=Q2
T 57800 50900 5 10 0 0 0 0 1
model-name=genNpn2
T 57800 50900 5 10 0 1 0 0 1
model=npn (bf=100)
}
N 53600 52000 53600 55100 4
C 57700 52800 1 180 0 resistor-2.sym
{
T 57300 52450 5 10 0 0 180 0 1
device=RESISTOR
T 57000 52400 5 10 1 1 0 0 1
value=10000
T 57000 52900 5 10 1 1 0 0 1
refdes=R1
}
N 56500 52700 56800 52700 4
N 57700 52700 57800 52700 4
C 57000 51500 1 180 0 resistor-2.sym
{
T 56600 51150 5 10 0 0 180 0 1
device=RESISTOR
T 56300 51100 5 10 1 1 0 0 1
value=10000
T 56300 51600 5 10 1 1 0 0 1
refdes=R2
}
N 53600 51400 56100 51400 4
N 57000 51400 57800 51400 4
C 58500 53900 1 90 0 resistor-2.sym
{
T 58150 54300 5 10 0 0 90 0 1
device=RESISTOR
T 58500 54200 5 10 1 1 0 0 1
value=300
T 58000 54200 5 10 1 1 0 0 1
refdes=RL
}
N 58400 53200 58400 53900 4
N 58400 54800 58400 55100 4
N 58400 53500 58800 53700 4
{
T 58800 53700 5 10 1 1 0 0 1
netname=Vout
}
T 52900 56700 9 10 1 0 0 0 3
The NAND is just a negated AND.
The citcuit is basically the same as the AND gate, the only difference 
is the spot where the output is taken from.
C 49400 57000 1 0 0 spice-directive-1.sym
{
T 49500 57300 5 10 0 1 0 0 1
device=directive
T 49500 57400 5 10 1 1 0 0 1
refdes=A1
T 49400 55300 5 10 1 1 0 0 9
value=.control
tran 1ms 2s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot vout vi1+5 vi2+10 
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
