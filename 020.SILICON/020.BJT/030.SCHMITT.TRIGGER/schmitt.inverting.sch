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
N 77700 41700 77700 42200 4
C 80600 39400 1 0 0 npn-3.sym
{
T 81500 39900 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 80600 39400 5 10 0 0 0 0 1
model-name=2N5551
T 80600 39400 5 10 0 0 0 0 1
model=npn
T 81100 39800 5 10 1 1 0 0 1
refdes=Q2
}
C 81100 41700 1 270 0 resistor-2.sym
{
T 81450 41300 5 10 0 0 270 0 1
device=RESISTOR
T 81300 41300 5 10 1 1 0 0 1
refdes=RL2
T 81300 41100 5 10 1 1 0 0 1
value=120
}
N 77700 42200 81200 42200 4
N 81200 38100 81200 39400 4
N 81200 40400 81200 40800 4
N 81200 36900 81200 37200 4
C 81100 38100 1 270 0 resistor-2.sym
{
T 81450 37700 5 10 0 0 270 0 1
device=RESISTOR
T 81300 37700 5 10 1 1 0 0 1
refdes=RE
T 81300 37500 5 10 1 1 0 0 1
value=80
}
C 78400 39800 1 0 0 resistor-2.sym
{
T 78800 40150 5 10 0 0 0 0 1
device=RESISTOR
T 78700 39600 5 10 1 1 0 0 1
refdes=R1
T 79100 40200 5 10 1 1 180 0 1
value=2000
}
N 79300 39900 80600 39900 4
C 79400 38100 1 270 0 resistor-2.sym
{
T 79750 37700 5 10 0 0 270 0 1
device=RESISTOR
T 79600 37700 5 10 1 1 0 0 1
refdes=R2
T 79600 37500 5 10 1 1 0 0 1
value=6000
}
N 79500 36900 81200 36900 4
N 79500 37200 79500 36900 4
N 77700 39600 77700 40800 4
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
N 77700 38600 77700 38400 4
N 77700 38400 81200 38400 4
N 79500 38100 79500 38200 4
N 79500 38200 79600 38300 4
N 79600 38300 79600 38500 4
N 79600 38500 79500 38600 4
N 79500 38600 79500 39900 4
N 81200 41700 81200 42200 4
C 80500 36600 1 0 0 gnd-1.sym
{
T 80400 36600 5 10 1 1 0 0 1
netname=0
}
C 73000 37500 1 0 0 gnd-1.sym
{
T 72900 37500 5 10 1 1 0 0 1
netname=0
}
N 77700 39900 78400 39900 4
N 81200 40800 82700 40800 4
C 75800 42300 1 270 0 voltage-3.sym
{
T 76500 42100 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 76300 41900 5 10 1 1 0 0 1
refdes=V1
T 76300 41700 5 10 1 1 0 0 1
value=DC 10V
}
C 75800 42300 1 0 0 vcc-1.sym
C 75900 41100 1 0 0 gnd-1.sym
{
T 75800 41100 5 10 1 1 0 0 1
netname=0
}
C 79600 42200 1 0 0 vcc-1.sym
C 82600 37300 1 0 0 gnd-1.sym
{
T 82600 37300 5 10 0 0 0 0 1
netname=0
}
C 82600 40200 1 270 0 resistor-2.sym
{
T 82950 39800 5 10 0 0 270 0 1
device=RESISTOR
T 82200 39700 5 10 1 1 0 0 1
value=2000
T 82900 39700 5 10 1 1 0 0 1
refdes=Rd1
}
C 82600 39000 1 270 0 resistor-2.sym
{
T 82950 38600 5 10 0 0 270 0 1
device=RESISTOR
T 82200 38500 5 10 1 1 0 0 1
value=400
T 82900 38500 5 10 1 1 0 0 1
refdes=Rd2
}
N 82700 40200 82700 40800 4
N 82700 39300 82700 39000 4
N 82700 38100 82700 37600 4
C 83700 38600 1 0 0 npn-3.sym
{
T 84600 39100 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 83700 38600 5 10 0 0 0 0 1
model-name=2N5551
T 83700 38600 5 10 0 0 0 0 1
model=npn
T 84200 39000 5 10 1 1 0 0 1
refdes=Q3
}
C 84200 40800 1 270 0 resistor-2.sym
{
T 84550 40400 5 10 0 0 270 0 1
device=RESISTOR
T 84800 40200 5 10 1 1 180 0 1
refdes=Rd3
T 84900 40400 5 10 1 1 180 0 1
value=2000
}
C 84100 40800 1 0 0 vcc-1.sym
C 84200 38300 1 0 0 gnd-1.sym
{
T 84200 38300 5 10 0 0 0 0 1
netname=0
}
N 83700 39100 82700 39100 4
N 84300 39600 84300 39900 4
N 84300 39700 84900 40000 4
{
T 85200 40000 5 10 1 1 0 6 1
netname=Vc
}
T 71900 43300 9 10 1 0 0 0 3
The output from the previous version of the trigger swings from 4 to 10 V.
Here a voltage divider reduces the voltage and feeds it to another transistor that acts as a NOT gate.
This way as output we have an inverted signal that goes from 0 to 10 V, more suitable to be used as a digital high/low signal.
N 76500 39100 76400 39700 4
{
T 76200 39800 5 10 1 1 0 0 1
netname=Vb1
}
C 82500 43000 1 0 0 spice-directive-1.sym
{
T 82600 43300 5 10 0 1 0 0 1
device=directive
T 82600 43400 5 10 1 1 0 0 1
refdes=A1
T 82500 41400 5 10 1 1 0 0 9
value=.control
set noaskquit
tran 1ms 0.6s
run
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="inverting Schmitt trigger with digital output"
plot vb1 vc 4.5 1.1
.endc
}
C 72100 41700 1 0 0 spice-include-1.sym
{
T 72200 42000 5 10 0 1 0 0 1
device=include
T 72200 42100 5 10 1 1 0 0 1
refdes=A2
T 72600 41800 5 10 1 1 0 0 1
file=2N5551.mod
}
T 76700 44900 9 20 1 0 0 0 1
inverting Schmitt trigger