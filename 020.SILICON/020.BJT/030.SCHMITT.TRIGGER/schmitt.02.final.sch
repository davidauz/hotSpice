v 20130925 2
C 73700 37900 1 180 1 resistor-2.sym
{
T 74100 37550 5 10 0 0 180 6 1
device=RESISTOR
T 74000 38100 5 10 1 1 180 6 1
value=500k
T 74000 37600 5 10 1 1 180 6 1
refdes=RS1
}
N 72400 37800 72400 40100 4
N 72400 37800 73700 37800 4
N 75100 37800 75100 40100 4
N 75100 37800 74600 37800 4
C 75100 39900 1 0 1 voltage-1.sym
{
T 75000 40400 5 10 0 0 0 6 1
device=VOLTAGE_SOURCE
T 75700 39700 5 10 1 1 0 6 1
value=DC 0 SIN (0 1 50 0 0)
T 75100 39900 5 10 0 0 0 6 1
comment=SIN(offset Amplitude FREQ delay THETA)
T 74800 40400 5 10 1 1 0 6 1
refdes=VS2
}
C 74200 39900 1 0 1 voltage-1.sym
{
T 74100 40400 5 10 0 0 0 6 1
device=VOLTAGE_SOURCE
T 74400 40600 5 10 1 1 0 6 1
value=DC 0 SIN (0 5 3.5 0 0)
T 74200 39900 5 10 0 0 0 6 1
comment=SIN(offset Amplitude FREQ delay THETA)
T 73900 40400 5 10 1 1 0 6 1
refdes=VS1
}
N 75100 39100 77100 39100 4
C 73300 39900 1 0 1 voltage-1.sym
{
T 73200 40400 5 10 0 0 0 6 1
device=VOLTAGE_SOURCE
T 73100 39700 5 10 1 1 0 6 1
value=DC 0 SIN (0 2 31 0 0)
T 73300 39900 5 10 0 0 0 6 1
comment=SIN(offset Amplitude FREQ delay THETA)
T 73000 40400 5 10 1 1 0 6 1
refdes=VS3
}
C 77600 41700 1 270 0 resistor-2.sym
{
T 77950 41300 5 10 0 0 270 0 1
device=RESISTOR
T 78200 41100 5 10 1 1 180 0 1
refdes=RL1
T 78300 41300 5 10 1 1 180 0 1
value=2000
}
N 77700 41700 77700 42500 4
C 81200 39400 1 0 0 npn-3.sym
{
T 82100 39900 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 81200 39400 5 10 0 0 0 0 1
model-name=2N5551
T 81200 39400 5 10 0 0 0 0 1
model=npn
T 81700 39800 5 10 1 1 0 0 1
refdes=Q2
}
C 81700 41700 1 270 0 resistor-2.sym
{
T 82050 41300 5 10 0 0 270 0 1
device=RESISTOR
T 81900 41300 5 10 1 1 0 0 1
refdes=RC
T 81900 41100 5 10 1 1 0 0 1
value=120
}
N 77700 42500 84200 42500 4
N 81800 38100 81800 39400 4
N 81800 40400 81800 40800 4
N 81800 40800 82400 41100 4
{
T 82700 41100 5 10 1 1 0 6 1
netname=Vc
}
N 81000 39900 80900 40500 4
{
T 80700 40600 5 10 1 1 0 0 1
netname=Vb2
}
N 81800 36900 81800 37200 4
C 81700 38100 1 270 0 resistor-2.sym
{
T 82050 37700 5 10 0 0 270 0 1
device=RESISTOR
T 81900 37700 5 10 1 1 0 0 1
refdes=RE
T 81900 37500 5 10 1 1 0 0 1
value=80
}
C 79000 39800 1 0 0 resistor-2.sym
{
T 79400 40150 5 10 0 0 0 0 1
device=RESISTOR
T 79300 39600 5 10 1 1 0 0 1
refdes=R1
T 79700 40200 5 10 1 1 180 0 1
value=2000
}
N 79900 39900 81200 39900 4
C 80000 38100 1 270 0 resistor-2.sym
{
T 80350 37700 5 10 0 0 270 0 1
device=RESISTOR
T 80200 37700 5 10 1 1 0 0 1
refdes=R2
T 80200 37500 5 10 1 1 0 0 1
value=6000
}
N 81800 38400 82400 38500 4
{
T 82700 38400 5 10 1 1 0 6 1
netname=Ve
}
N 80100 36900 84200 36900 4
N 80100 37200 80100 36900 4
N 77700 39600 77700 40800 4
N 77700 39900 78500 40600 4
{
T 78500 40600 5 10 1 1 0 0 1
netname=Vm
}
C 77100 38600 1 0 0 npn-3.sym
{
T 78000 39100 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 77100 38600 5 10 0 0 0 0 1
model-name=2N5551
T 77100 38600 5 10 0 0 0 0 1
model=npn
T 78000 39100 5 10 1 1 0 0 1
refdes=Q1
}
C 84000 39200 1 270 0 voltage-3.sym
{
T 84700 39000 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 84500 38800 5 10 1 1 0 0 1
refdes=V1
T 84500 38600 5 10 1 1 0 0 1
value=DC 10V
}
N 84200 39200 84200 42500 4
N 84200 38300 84200 36900 4
N 77700 38600 77700 38400 4
N 77700 38400 81800 38400 4
N 80100 38100 80100 38200 4
N 80100 38200 80200 38300 4
N 80200 38300 80200 38500 4
N 80200 38500 80100 38600 4
N 80100 38600 80100 39900 4
N 81800 41700 81800 42500 4
C 81100 36600 1 0 0 gnd-1.sym
{
T 81000 36600 5 10 1 1 0 0 1
netname=0
}
N 76500 39100 76400 39700 4
{
T 76200 39800 5 10 1 1 0 0 1
netname=Vb1
}
C 73000 37500 1 0 0 gnd-1.sym
{
T 72900 37500 5 10 1 1 0 0 1
netname=0
}
N 77700 39900 79000 39900 4
T 75800 36100 9 10 1 0 0 0 10
Here is our final Schmitt trigger.
The input signal is a wavy signal,
the output is a fine square triggered by 
upper and a lower tresholds.

In a circuit like this if you use the default
SPICE transistor you may see the infamous
"Timestep too small" error, because the
transition from low to high is really too fast.

T 77900 34500 9 10 1 0 0 0 8
SPICE has its own way to solve the models
equations; the step given in the cmd file is
actually the sample interval of an internal 
timing scale that is adjusted on each iteration
to what is really happening in the components.
If something is happening too fast, then SPICE
tries again with a smaller step, and so on until
it either solves everything or burps an error.
C 85200 39200 1 0 0 spice-include-1.sym
{
T 85300 39500 5 10 0 1 0 0 1
device=include
T 85300 39600 5 10 1 1 0 0 1
refdes=A2
T 85700 39300 5 10 1 1 0 0 1
file=2N5551.mod
}
T 82100 34500 9 10 1 0 0 0 5
Here I used a real transistor model so the
error is avoided.
You can try using the default transistor, and 
when the error pops up, add a small capacitor 
between Q2 base and the Ve net.
C 85200 41600 1 0 0 spice-directive-1.sym
{
T 85300 41900 5 10 0 1 0 0 1
device=directive
T 85300 42000 5 10 1 1 0 0 1
refdes=A1
T 85200 40100 5 10 1 1 0 0 9
value=.control
set noaskquit
tran 1ms 0.6s
run
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Schmitt trigger"
plot vb1 vc 4.5 1.1
.endc
}
T 71300 42100 9 20 1 0 0 0 1
building the Schmitt trigger: step 3
