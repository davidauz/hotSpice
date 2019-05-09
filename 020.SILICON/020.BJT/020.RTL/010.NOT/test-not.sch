v 20130925 2
C 51900 54500 1 0 0 vcc-1.sym
C 52000 53300 1 0 0 gnd-1.sym
C 51900 54500 1 270 0 voltage-3.sym
{
T 52600 54300 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 52400 54100 5 10 1 1 0 0 1
refdes=V1
T 52400 53900 5 10 1 1 0 0 1
value=DC 5V
}
N 56400 54300 56400 55100 4
C 54500 53300 1 0 0 spice-vc-switch-1.sym
{
T 56100 54000 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 55200 53450 5 8 0 1 0 0 1
model-name=swmod
T 54500 53300 5 10 0 1 0 0 1
model=vt=1 vh=0.1 ron=1000 roff=1e16
T 54500 53300 5 10 0 0 0 0 1
value=OFF
T 54500 53300 5 10 0 0 0 0 1
comment=Von Voff Ron Roff
T 55400 54500 5 12 1 1 0 0 1
refdes=S1
}
C 53800 54400 1 270 0 voltage-3.sym
{
T 53800 54400 5 10 0 0 0 0 1
value=pulse (0 5 0.1 0.001 0.001 0.1 0.35)
T 53800 54400 5 10 0 0 0 0 1
comment=initial V, pulsed V, delay t, rise t, fall t, pulse width,period
T 54300 53900 5 10 1 1 0 0 1
refdes=vP1
}
N 54000 54400 54700 54400 4
N 54700 54400 54700 54300 4
N 54000 53500 54700 53500 4
N 54700 53500 54700 53700 4
C 54200 53200 1 0 0 gnd-1.sym
N 56200 54300 56400 54300 4
N 56200 53700 57000 53700 4
C 57000 53300 1 0 0 not.sym
{
T 58050 53450 5 8 0 0 0 0 1
device=NOT_GATE
T 57700 54100 5 10 1 1 0 0 1
refdes=X1
T 55500 53100 5 10 1 0 0 0 1
file=../../../../subckts/not.SUBCKT.cir
T 55500 52900 5 10 1 0 0 0 1
model-name=not_gate
}
N 58100 53700 58500 53700 4
{
T 58600 53700 5 10 1 1 0 0 1
netname=Vout
}
C 57400 52400 1 0 0 gnd-1.sym
N 57500 53300 57500 52700 4
N 57500 54100 57500 55000 4
C 56200 55100 1 0 0 vcc-1.sym
N 57500 55000 56400 55000 4
N 54200 54400 54600 54900 4
{
T 54700 54900 5 10 1 1 0 0 1
netname=Vpulse
}
T 53300 57000 9 10 1 0 0 0 4
This is the schematic to test that our SUBCKT actually works.

Yes I know the .cir file path is weird, but I like my SUBCKT netlists
to be all in one place.
C 50400 57100 1 0 0 spice-directive-1.sym
{
T 50500 57400 5 10 0 1 0 0 1
device=directive
T 50500 57500 5 10 1 1 0 0 1
refdes=A1
T 50400 55500 5 10 1 1 0 0 9
value=.control
tran 1ms 1s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot vpulse vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
