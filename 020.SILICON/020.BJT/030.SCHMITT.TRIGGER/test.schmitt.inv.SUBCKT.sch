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
value=SIN (0 1 50 0 0)
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
value=SIN (0 5 3.5 0 0)
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
value=SIN (0 2 31 0 0)
T 73300 39900 5 10 0 0 0 6 1
comment=SIN(offset Amplitude FREQ delay THETA)
T 73000 40400 5 10 1 1 0 6 1
refdes=VS3
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
C 70600 39500 1 270 0 voltage-3.sym
{
T 71300 39300 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 71100 39100 5 10 1 1 0 0 1
refdes=V1
T 71100 38900 5 10 1 1 0 0 1
value=DC 10V
}
C 70700 38300 1 0 0 gnd-1.sym
{
T 70600 38300 5 10 1 1 0 0 1
netname=0
}
C 77500 38300 1 0 0 gnd-1.sym
{
T 77400 38300 5 10 1 1 0 0 1
netname=0
}
C 70600 39500 1 0 0 vcc-1.sym
C 77400 39600 1 0 0 vcc-1.sym
N 78300 39100 78900 39400 4
{
T 79200 39400 5 10 1 1 0 6 1
netname=Vc
}
C 77100 38600 1 0 0 schmitt-trigger-inv.sym
{
T 77900 39400 5 10 1 1 0 0 1
refdes=X1
T 77340 39972 5 10 0 0 0 0 1
symversion=1.0
T 77795 38395 5 10 0 0 0 0 1
device=schmitt_trigger_inv
T 77800 38600 5 10 0 0 0 0 1
file=../../../subckts/schmitt.inverting.SUBCKT.cir
T 77800 38200 5 10 0 0 0 0 1
model-name=schmitt_trigger_inv
}
T 74200 41400 9 10 1 0 0 0 2
This is the test circuit for the inverting
Schmitt trigger with digital output.
C 78900 41500 1 0 0 spice-directive-1.sym
{
T 79000 41800 5 10 0 1 0 0 1
device=directive
T 79000 41900 5 10 1 1 0 0 1
refdes=A1
T 78900 39900 5 10 1 1 0 0 9
value=.control
set noaskquit
tran 0.5ms 0.6s
run
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="inverting Schmitt trigger test SUBCKT"
plot vb1 vc 4.5 1.1
.endc
}
