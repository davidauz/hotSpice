v 20130925 2
N 51400 55100 59700 55100 4
C 60900 55500 1 0 0 vcc-1.sym
{
T 60900 55500 5 10 0 0 0 0 1
netname=vcc
}
C 60900 55500 1 270 0 voltage-3.sym
{
T 61600 55300 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 61400 55100 5 10 1 1 0 0 1
refdes=V1
T 61400 54900 5 10 1 1 0 0 1
value=DC 5V
}
N 57400 54300 57400 55100 4
N 57400 51700 57400 53700 4
C 55500 53300 1 0 0 spice-vc-switch-1.sym
{
T 57100 54000 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 56200 53450 5 8 0 1 0 0 1
model-name=swmod1
T 55500 53300 5 10 0 1 0 0 1
model=vt=1 vh=0.1 ron=100 roff=1e16
T 55500 53300 5 10 0 0 0 0 1
value=OFF
T 55500 53300 5 10 0 0 0 0 1
comment=Von Voff Ron Roff
T 56400 54500 5 12 1 1 0 0 1
refdes=S1
}
C 54800 54400 1 270 0 voltage-3.sym
{
T 54800 54400 5 10 0 0 0 0 1
value=pulse (0 5 0.1 0.001 0.001 0.1 0.35)
T 54800 54400 5 10 0 0 0 0 1
comment=initial V, pulsed V, delay t, rise t, fall t, pulse width,period
T 55300 53900 5 10 1 1 0 0 1
refdes=vP1
}
N 55000 54400 55700 54400 4
N 55700 54400 55700 54300 4
N 55000 53500 55700 53500 4
N 55700 53500 55700 53700 4
N 57200 54300 57400 54300 4
N 57200 53700 57400 53700 4
C 52500 50800 1 0 0 spice-vc-switch-1.sym
{
T 54100 51500 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 53200 50950 5 8 0 1 0 0 1
model-name=swmod2
T 52500 50800 5 10 0 1 0 0 1
model=vt=1 vh=0.1 ron=100 roff=1e16
T 52500 50800 5 10 0 0 0 0 1
value=OFF
T 52500 50800 5 10 0 0 0 0 1
comment=Von Voff Ron Roff
T 53400 52000 5 12 1 1 0 0 1
refdes=S2
}
C 51800 51900 1 270 0 voltage-3.sym
{
T 51800 51900 5 10 0 0 0 0 1
value=pulse (0 5 0.15 0.001 0.001 0.1 0.35)
T 51800 51900 5 10 0 0 0 0 1
comment=initial V, pulsed V, delay t, rise t, fall t, pulse width,period
T 52300 51400 5 10 1 1 0 0 1
refdes=vP2
}
N 52000 51900 52700 51900 4
N 52700 51900 52700 51800 4
N 52000 51000 52700 51000 4
N 52700 51000 52700 51200 4
N 54500 51800 54500 55100 4
N 59700 52600 59700 55100 4
N 55400 54400 55700 54600 4
{
T 55800 54600 5 10 1 1 0 0 1
netname=Vi1
}
N 52300 51900 52600 52100 4
{
T 52700 52100 5 10 1 1 0 0 1
netname=Vi2
}
T 56100 53400 9 10 1 0 0 0 1
Ron=100
T 53100 50900 9 10 1 0 0 0 1
Ron=100
C 59600 49000 1 0 0 gnd-1.sym
{
T 59600 49000 5 10 0 0 0 0 1
netname=0
}
C 49700 49100 1 0 0 spice-vc-switch-1.sym
{
T 51300 49800 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 50400 49250 5 8 0 1 0 0 1
model-name=swmod3
T 49700 49100 5 10 0 1 0 0 1
model=vt=1 vh=0.1 ron=100 roff=1e16
T 49700 49100 5 10 0 0 0 0 1
value=OFF
T 49700 49100 5 10 0 0 0 0 1
comment=Von Voff Ron Roff
T 50600 50300 5 12 1 1 0 0 1
refdes=S3
}
N 59700 49300 59700 49800 4
N 54200 51800 54500 51800 4
C 48900 50300 1 270 0 voltage-3.sym
{
T 48900 50300 5 10 0 0 0 0 1
value=pulse (0 5 0.17 0.001 0.001 0.1 0.35)
T 48900 50300 5 10 0 0 0 0 1
comment=initial V, pulsed V, delay t, rise t, fall t, pulse width,period
T 49400 49800 5 10 1 1 0 0 1
refdes=vP3
}
N 49100 50300 49900 50300 4
N 49900 50300 49900 50100 4
N 49100 49400 49900 49400 4
N 49900 49400 49900 49500 4
N 49400 50300 49700 50500 4
{
T 49800 50500 5 10 1 1 0 0 1
netname=Vi3
}
N 51400 50100 51400 55100 4
C 55200 53200 1 0 0 gnd-1.sym
{
T 55200 53200 5 10 0 0 0 0 1
netname=0
}
C 52200 50700 1 0 0 gnd-1.sym
{
T 52200 50700 5 10 0 0 0 0 1
netname=0
}
C 49300 49100 1 0 0 gnd-1.sym
{
T 49300 49100 5 10 0 0 0 0 1
netname=0
}
C 61000 54300 1 0 0 gnd-1.sym
{
T 61000 54300 5 10 0 0 0 0 1
netname=0
}
C 55000 55100 1 0 0 vcc-1.sym
{
T 55000 55100 5 10 0 0 0 0 1
netname=vcc
}
N 61700 51200 62100 51200 4
{
T 61800 51400 5 10 1 1 0 0 1
netname=Vout
}
C 62200 50100 1 90 0 resistor-2.sym
{
T 61850 50500 5 10 0 0 90 0 1
device=RESISTOR
T 62200 50400 5 10 1 1 0 0 1
value=10k
T 61700 50400 5 10 1 1 0 0 1
refdes=RL
}
N 62100 51000 62100 51200 4
C 62000 49800 1 0 0 gnd-1.sym
{
T 62000 49800 5 10 0 0 0 0 1
netname=0
}
T 53300 56800 9 10 1 0 0 0 5
This is a test circuit for the three-legged NAND gate SUBCKT.

Tip: when in doubt about some weird error in gnetlist, try this:

gnetlist -g drc2 -o test-nand.txt test-nand.sch
N 58200 49500 58200 50700 4
N 57400 51700 58200 51700 4
N 54200 51200 58200 51200 4
N 58200 49500 51400 49500 4
C 58200 49800 1 0 0 nand-gate.sym
{
T 59895 52395 5 10 0 0 0 0 1
device=NAND_GATE
T 59995 52095 5 10 1 1 0 0 1
refdes=X1
T 59895 52795 5 10 0 0 0 0 1
footprint=0
T 60000 52300 5 10 1 0 0 0 1
model-name=nand_gate
T 60000 52500 5 10 1 0 0 0 1
file=../nand.3.SUBCKT.mod
}
C 47800 57000 1 0 0 spice-directive-1.sym
{
T 47900 57300 5 10 0 1 0 0 1
device=directive
T 47900 57400 5 10 1 1 0 0 1
refdes=A1
T 47800 55200 5 10 1 1 0 0 9
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
