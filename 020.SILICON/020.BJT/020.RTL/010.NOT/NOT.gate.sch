v 20130925 2
C 56800 51500 1 0 0 gnd-1.sym
C 56700 55300 1 0 0 vcc-1.sym
N 54900 55300 56900 55300 4
C 59300 54500 1 0 0 vcc-1.sym
C 59400 53300 1 0 0 gnd-1.sym
C 59300 54500 1 270 0 voltage-3.sym
{
T 60000 54300 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 59800 54100 5 10 1 1 0 0 1
refdes=V1
T 59800 53900 5 10 1 1 0 0 1
value=DC 5V
}
C 56300 52400 1 0 0 npn-3.sym
{
T 57200 52900 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 57200 52900 5 10 1 1 0 0 1
refdes=Q1
T 56300 52400 5 10 0 0 0 0 1
model-name=genericNpn
T 56300 52400 5 10 0 1 0 0 1
model=npn (bf=100)
}
N 56900 52400 56900 51800 4
N 54900 54500 54900 55300 4
N 54900 52900 54900 53900 4
C 57000 54100 1 90 0 resistor-2.sym
{
T 56650 54500 5 10 0 0 90 0 1
device=RESISTOR
T 57000 54400 5 10 1 1 0 0 1
value=500
T 57000 54700 5 10 1 1 0 0 1
refdes=RL
}
N 56900 55000 56900 55300 4
N 56900 53400 56900 54100 4
N 56900 53900 57300 53900 4
{
T 57400 53900 5 10 1 1 0 0 1
netname=Vout
}
C 53000 53500 1 0 0 spice-vc-switch-1.sym
{
T 54600 54200 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 53700 53650 5 8 0 1 0 0 1
model-name=swmod
T 53000 53500 5 10 0 1 0 0 1
model=vt=1 vh=0.1 ron=1000 roff=1e16
T 53000 53500 5 10 0 0 0 0 1
value=OFF
T 53000 53500 5 10 0 0 0 0 1
comment=Von Voff Ron Roff
T 53900 54700 5 12 1 1 0 0 1
refdes=S1
}
C 52300 54600 1 270 0 voltage-3.sym
{
T 52300 54600 5 10 0 0 0 0 1
value=pulse (0 5 0.1 0.001 0.001 0.1 0.35)
T 52300 54600 5 10 0 0 0 0 1
comment=initial V, pulsed V, delay t, rise t, fall t, pulse width,period
T 52800 54100 5 10 1 1 0 0 1
refdes=vP1
}
N 52500 54600 53200 54600 4
N 53200 54600 53200 54500 4
N 52500 53700 53200 53700 4
N 53200 53700 53200 53900 4
C 52700 53400 1 0 0 gnd-1.sym
N 54700 54500 54900 54500 4
N 54700 53900 54900 53900 4
C 56100 53000 1 180 0 resistor-2.sym
{
T 55700 52650 5 10 0 0 180 0 1
device=RESISTOR
T 55200 52600 5 10 1 1 0 0 1
value=10k
T 55500 53100 5 10 1 1 0 0 1
refdes=Rb
}
N 56200 52900 55900 52400 4
{
T 55900 52200 5 10 1 1 0 0 1
netname=Vb
}
N 54900 52900 55200 52900 4
N 56100 52900 56300 52900 4
T 51900 56500 9 10 1 0 0 0 11
RTL stands for Resistor and Transistor Logic: building 
logic gates using discrete components.  
Even if the real digital world runs on CMOS technology, 
the old ways are very interesting.

This is the most basic NOT gate.

The plot shows the base current and the 
output voltage.
When the base current Vb is LOW then the 
output voltage Vout is HIGH, and vice versa.
C 57100 58100 1 0 0 spice-directive-1.sym
{
T 57200 58400 5 10 0 1 0 0 1
device=directive
T 57200 58500 5 10 1 1 0 0 1
refdes=A1
T 57100 56300 5 10 1 1 0 0 10
value=.control
tran 1ms 1s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="RTL NOT gate"
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
plot Vb Vout
.endc
}
