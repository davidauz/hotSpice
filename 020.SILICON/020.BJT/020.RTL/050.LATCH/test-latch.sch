v 20130925 2
N 52300 53600 53800 53600 4
C 49800 51700 1 0 0 spice-vc-switch-1.sym
{
T 51400 52400 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 49500 53100 5 10 0 1 0 0 1
model=VT=0.95 VH=0
T 50700 52900 5 12 1 1 0 0 1
refdes=S1
T 50500 51850 5 8 1 1 0 0 1
model-name=swmod
}
C 49000 52800 1 270 0 voltage-3.sym
{
T 49700 52600 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 49000 52800 5 10 0 0 0 0 1
value=pulse (0 5 0.1 0.001 0.001 0.1 0.5) DC 5
T 49000 52800 5 10 0 0 0 0 1
comment=initial value, pulsed value, delay time, rise time, fall time, pulse width,period
T 49500 52300 5 10 1 1 0 0 1
refdes=VP
}
N 49200 52800 50000 52800 4
{
T 49000 52900 5 10 1 1 0 0 1
netname=VPulse
}
N 50000 52800 50000 52700 4
N 49200 51900 50000 51900 4
N 50000 51900 50000 52100 4
C 49500 51200 1 0 0 gnd-1.sym
N 49600 51500 49600 51900 4
N 51500 52700 52300 52700 4
N 52300 52700 52300 53600 4
C 54000 56200 1 0 0 vcc-1.sym
C 54100 55000 1 0 0 gnd-1.sym
C 54000 56200 1 270 0 voltage-3.sym
{
T 54700 56000 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 54500 55800 5 10 1 1 0 0 1
refdes=V1
T 54500 55600 5 10 1 1 0 0 1
value=DC 5V
}
C 52600 53600 1 0 0 vcc-1.sym
C 53700 52300 1 0 0 gnd-1.sym
C 53200 52400 1 0 0 latch.sym
{
T 53500 53500 5 10 0 0 0 0 1
device=LATCH
T 54000 53400 5 10 1 1 0 0 1
refdes=X3
T 54000 53600 5 10 1 0 0 0 1
model-name=latch
T 54000 53800 5 10 1 0 0 0 1
file=../../../../subckts/latch.SUBCKT.cir
}
N 53800 53600 53800 53500 4
N 55300 51500 55300 53100 4
N 51500 51500 55300 51500 4
N 53800 52600 53800 52500 4
N 54400 53100 55300 53100 4
N 51500 52100 51500 51500 4
N 55300 52600 55800 52600 4
{
T 55600 52700 5 10 1 1 0 0 1
netname=vOut
}
C 55600 56000 1 0 0 spice-directive-1.sym
{
T 55700 56300 5 10 0 1 0 0 1
device=directive
T 55700 56400 5 10 1 1 0 0 1
refdes=A1
T 55600 54400 5 10 1 1 0 0 9
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
T 49100 55300 9 10 1 0 0 0 1
Here is the test circuit for the lach SUBCKT.
