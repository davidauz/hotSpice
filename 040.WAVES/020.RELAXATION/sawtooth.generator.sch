v 20130925 2
C 74200 40100 1 270 0 voltage-3.sym
{
T 74900 39900 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 74700 39700 5 10 1 1 0 0 1
refdes=V1
T 74700 39500 5 10 1 1 0 0 1
value=DC 5V
}
C 74300 38900 1 0 0 gnd-1.sym
{
T 74200 38900 5 10 1 1 0 0 1
netname=0
}
C 77500 38300 1 0 0 gnd-1.sym
{
T 77400 38300 5 10 1 1 0 0 1
netname=0
}
C 74200 40100 1 0 0 vcc-1.sym
C 77400 39600 1 0 0 vcc-1.sym
C 76400 38200 1 90 0 capacitor-1.sym
{
T 75900 38700 5 10 1 1 180 0 1
refdes=C1
T 76800 38600 5 10 1 1 180 0 1
value=5u
}
N 78300 39100 78800 39100 4
N 78800 39100 78800 40800 4
N 78800 40800 77500 40800 4
C 76600 40700 1 0 0 resistor-2.sym
{
T 77000 41050 5 10 0 0 0 0 1
device=RESISTOR
T 76900 40500 5 10 1 1 0 0 1
refdes=R1
T 77300 41100 5 10 1 1 180 0 1
value=5000
}
N 76600 40800 76200 40800 4
N 76200 40800 76200 39100 4
C 76100 37900 1 0 0 gnd-1.sym
{
T 76000 37900 5 10 1 1 0 0 1
netname=0
}
N 78800 40100 79300 40400 4
{
T 79100 40100 5 10 1 1 0 0 1
netname=o1
}
N 76200 40000 75900 40200 4
{
T 75700 39900 5 10 1 1 0 0 1
netname=o2
}
T 73900 41600 9 10 1 0 0 0 1
This is the classical triangle wave generator, based on an inverting Schmitt trigger.
C 80300 40400 1 0 0 spice-directive-1.sym
{
T 80400 40700 5 10 0 1 0 0 1
device=directive
T 80400 40800 5 10 1 1 0 0 1
refdes=A1
T 80300 39500 5 10 1 1 0 0 6
value=.control
tran 0.01ms 0.1s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot o2 o1
.endc
}
C 77100 38600 1 0 0 schmitt-trigger-inv.sym
{
T 77900 39400 5 10 1 1 0 0 1
refdes=X1
T 77340 39972 5 10 0 0 0 0 1
symversion=1.0
T 77095 38395 5 10 0 0 0 0 1
model-name=schmitt_trgr_aud
T 77100 38600 5 10 0 0 0 0 1
file=./schmitt.inv.SUBCKT.audio.cir
}
N 77100 39100 76200 39100 4
T 79100 39500 9 10 1 0 0 0 3
square 
wave
(sort of)
T 75200 40200 9 10 1 0 0 0 3
saw
tooth
(sort of)
