v 20130925 2
C 53800 51100 1 0 0 vcc-1.sym
{
T 53800 51100 5 10 0 1 0 0 1
netname=vcc
}
C 53800 51100 1 270 0 voltage-3.sym
{
T 54500 50900 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 54300 50700 5 10 1 1 0 0 1
refdes=V1
T 54300 50500 5 10 1 1 0 0 1
value=DC 5V
}
C 49700 49500 1 0 0 spice-vc-switch-1.sym
{
T 51300 50200 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 49400 50900 5 10 0 1 0 0 1
model=VT=0.95 VH=0
T 50500 49400 5 12 1 1 0 0 1
refdes=S1
T 50400 49650 5 8 1 1 0 0 1
model-name=swmod
}
C 48900 50600 1 270 0 voltage-3.sym
{
T 49600 50400 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 45600 49800 5 10 0 1 0 0 1
value=pulse (0 5 0.1 0.001 0.001 0.1 0.5) DC 5
T 48900 50600 5 10 0 0 0 0 1
comment=initial value, pulsed value, delay time, rise time, fall time, pulse width,period
T 49400 50100 5 10 1 1 0 0 1
refdes=VP1
}
N 49100 50600 49900 50600 4
N 49900 50600 49900 50500 4
N 49100 49700 49900 49700 4
N 49900 49700 49900 49900 4
N 49500 49300 49500 49700 4
C 49300 47300 1 0 0 spice-vc-switch-1.sym
{
T 50900 48000 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 49000 48700 5 10 0 1 0 0 1
model=VT=0.95 VH=0
T 50100 47200 5 12 1 1 0 0 1
refdes=S2
T 50000 47450 5 8 1 1 0 0 1
model-name=swmod2
}
N 49100 50600 48600 50400 4
{
T 48100 50300 5 10 1 1 0 0 1
netname=vset
}
C 52200 47500 1 0 0 set-reset.sym
{
T 52400 48900 5 10 1 1 0 0 1
refdes=X1
T 52300 46300 5 10 0 0 0 0 1
device=sr_latch
T 52300 46100 5 10 0 0 0 0 1
file=sr.SUBCKT.cir
T 52300 46500 5 10 0 0 0 0 1
model-name=sr_latch
T 52300 46700 5 10 0 0 0 0 1
model=sr_latch
}
N 51400 49900 51700 49900 4
N 51700 48500 51700 49900 4
N 51700 48500 52200 48500 4
C 48400 48500 1 270 0 voltage-3.sym
{
T 49100 48300 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 48400 48500 5 10 0 0 0 0 1
comment=initial value, pulsed value, delay time, rise time, fall time, pulse width,period
T 45000 47800 5 10 0 1 0 0 1
value=pulse (0 5 0.22 0.001 0.001 0.1 0.5) DC 5
T 48900 48000 5 10 1 1 0 0 1
refdes=VP2
}
N 48600 48500 49300 48500 4
N 49300 48500 49500 48300 4
N 48600 47600 49300 47600 4
N 49300 47600 49500 47700 4
N 51000 47700 51700 47700 4
N 51700 47700 51700 48000 4
N 51700 48000 52200 48000 4
N 48600 48500 48100 48300 4
{
T 47600 48400 5 10 1 1 0 0 1
netname=vreset
}
C 52900 47200 1 0 0 gnd-1.sym
{
T 52900 47200 5 10 0 0 0 0 1
netname=0
}
C 49400 49000 1 0 0 gnd-1.sym
{
T 49400 49000 5 10 0 0 0 0 1
netname=0
}
C 49000 47300 1 0 0 gnd-1.sym
{
T 49000 47300 5 10 0 0 0 0 1
netname=0
}
C 53900 49900 1 0 0 gnd-1.sym
{
T 53900 49900 5 10 0 0 0 0 1
netname=0
}
N 54300 48700 53800 48500 4
{
T 54300 48800 5 10 1 1 0 0 1
netname=Q
}
N 54400 47800 53800 48000 4
{
T 54400 47600 5 10 1 1 0 0 1
netname=notQ
}
C 52800 49000 1 0 0 vcc-1.sym
{
T 52800 49000 5 10 0 1 0 0 1
netname=vcc
}
C 51300 50200 1 0 0 gnd-1.sym
{
T 51300 50200 5 10 0 0 0 0 1
netname=0
}
C 50900 48000 1 0 0 gnd-1.sym
{
T 50900 48000 5 10 0 0 0 0 1
netname=0
}
T 44800 51100 9 10 1 0 0 0 3
This is the test circuit for the SR SUBCKT.
You need to generate the cir file first.
Open the SUBCKT.sch schematic and follow the instructions.
C 44900 47400 1 0 0 spice-directive-1.sym
{
T 45000 47700 5 10 0 1 0 0 1
device=directive
T 45000 47800 5 10 1 1 0 0 1
refdes=A1
T 44900 45600 5 10 1 1 0 0 10
value=.control
tran 1ms 1s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Set-Reset with SUBCKT"
plot vset vreset 6+q 12+notq
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
