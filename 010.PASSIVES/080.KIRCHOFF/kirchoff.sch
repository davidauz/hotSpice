v 20130925 2
T 23700 76800 9 10 1 0 0 0 2
For any node in an electrical circuit, the sum of currents flowing into that node
is equal to the sum of currents flowing out of that node.
T 23600 77500 9 15 1 0 0 0 1
KIRCHOFF's Current Law (KCL; his name was Gustav Robert Kirchhoff)
C 22500 74000 1 0 0 resistor-2.sym
{
T 22900 74350 5 10 0 0 0 0 1
device=RESISTOR
T 23100 73900 5 10 1 1 180 0 1
value=500
T 23000 74400 5 10 1 1 180 0 1
refdes=R1
}
C 22500 71800 1 0 0 resistor-2.sym
{
T 22900 72150 5 10 0 0 0 0 1
device=RESISTOR
T 23100 71700 5 10 1 1 180 0 1
value=430
T 23000 72200 5 10 1 1 180 0 1
refdes=R2
}
C 22500 70600 1 0 0 resistor-2.sym
{
T 22900 70950 5 10 0 0 0 0 1
device=RESISTOR
T 23000 70500 5 10 1 1 180 0 1
value=12
T 23000 71000 5 10 1 1 180 0 1
refdes=R3
}
C 24700 73000 1 90 0 resistor-2.sym
{
T 24350 73400 5 10 0 0 90 0 1
device=RESISTOR
T 24000 73200 5 10 1 1 0 0 1
value=100
T 24200 73400 5 10 1 1 0 0 1
refdes=R4
}
C 24700 70800 1 90 0 resistor-2.sym
{
T 24350 71200 5 10 0 0 90 0 1
device=RESISTOR
T 24000 71100 5 10 1 1 0 0 1
value=150
T 24100 71300 5 10 1 1 0 0 1
refdes=R5
}
C 28800 74000 1 0 0 resistor-2.sym
{
T 29200 74350 5 10 0 0 0 0 1
device=RESISTOR
T 29400 73900 5 10 1 1 180 0 1
value=154
T 29300 74400 5 10 1 1 180 0 1
refdes=R6
}
C 28800 71500 1 0 0 resistor-2.sym
{
T 29200 71850 5 10 0 0 0 0 1
device=RESISTOR
T 29400 71400 5 10 1 1 180 0 1
value=345
T 29300 71900 5 10 1 1 180 0 1
refdes=R7
}
C 28800 70600 1 0 0 resistor-2.sym
{
T 29200 70950 5 10 0 0 0 0 1
device=RESISTOR
T 29400 70500 5 10 1 1 180 0 1
value=1212
T 29300 71000 5 10 1 1 180 0 1
refdes=R8
}
C 30900 70900 1 90 0 resistor-2.sym
{
T 30550 71300 5 10 0 0 90 0 1
device=RESISTOR
T 30300 71100 5 10 1 1 0 0 1
value=343
T 30400 71300 5 10 1 1 0 0 1
refdes=R9
}
C 21200 72400 1 0 0 vdc-1.sym
{
T 22200 72950 5 10 1 1 180 0 1
refdes=V1
T 21900 73250 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 22500 73200 5 10 1 1 180 0 1
value=DC 30V
}
C 30500 72600 1 0 0 vdc-1.sym
{
T 31500 73150 5 10 1 1 180 0 1
refdes=V3
T 31200 73450 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 31900 73400 5 10 1 1 180 0 1
value=DC 130V
}
C 26600 72700 1 0 0 vdc-1.sym
{
T 27600 73250 5 10 1 1 180 0 1
refdes=V2
T 27300 73550 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 27900 73500 5 10 1 1 180 0 1
value=DC 12V
}
N 21500 73600 21500 74100 4
N 21500 74100 22500 74100 4
N 22500 71900 22500 70700 4
N 21500 72400 21500 71300 4
N 21500 71300 22500 71300 4
N 24600 73000 24600 71700 4
N 23400 71900 24600 71900 4
N 24600 73900 24600 74100 4
N 23400 74100 28800 74100 4
N 23400 70700 24600 70700 4
N 24600 70700 24600 70800 4
N 26900 74100 26900 73900 4
N 28800 71600 28400 71600 4
N 28400 70700 28400 71600 4
N 28400 70700 28800 70700 4
N 29700 71600 30200 71600 4
N 30200 71600 30200 74100 4
N 29700 74100 32300 74100 4
N 30800 73800 30800 74100 4
N 30800 71800 30800 72600 4
N 29700 70700 30800 70700 4
N 30800 70700 30800 70900 4
N 26900 69800 32300 69800 4
C 32400 71300 1 90 0 resistor-2.sym
{
T 32050 71700 5 10 0 0 90 0 1
device=RESISTOR
T 31800 71500 5 10 1 1 0 0 1
value=400
T 31800 71700 5 10 1 1 0 0 1
refdes=R10
}
N 32300 72200 32300 74100 4
N 32300 71300 32300 69800 4
N 24600 71900 25200 71900 4
N 25200 71300 25200 71900 4
C 26800 72500 1 270 0 resistor-2.sym
{
T 27150 72100 5 10 0 0 270 0 1
device=RESISTOR
T 27300 72300 5 10 1 1 180 0 1
value=120
T 27300 72100 5 10 1 1 180 0 1
refdes=Rt1
}
N 26900 72500 26900 72700 4
N 26900 71000 26900 71600 4
C 27000 70100 1 90 0 resistor-2.sym
{
T 26650 70500 5 10 0 0 90 0 1
device=RESISTOR
T 26600 70300 5 10 1 1 0 0 1
value=10
T 26500 70500 5 10 1 1 0 0 1
refdes=Rt2
}
N 26900 70100 26900 69800 4
C 28200 71400 1 180 0 resistor-2.sym
{
T 27800 71050 5 10 0 0 180 0 1
device=RESISTOR
T 27600 71500 5 10 1 1 0 0 1
value=150
T 27600 71700 5 10 1 1 0 0 1
refdes=Rt3
}
N 28200 71300 28400 71300 4
N 27300 71300 26900 71300 4
C 25600 71200 1 0 0 resistor-2.sym
{
T 26000 71550 5 10 0 0 0 0 1
device=RESISTOR
T 26100 71100 5 10 1 1 180 0 1
value=130
T 26200 70900 5 10 1 1 180 0 1
refdes=Rt4
}
N 26500 71300 26900 71300 4
N 25600 71300 25200 71300 4
C 33000 74300 1 0 0 spice-directive-1.sym
{
T 33100 74600 5 10 0 1 0 0 1
device=directive
T 33100 74700 5 10 1 1 0 0 1
refdes=A1
T 33000 72500 5 10 1 1 0 0 8
value=.options savecurrents
.control
op
set color0=rgb:f/f/f
set color1=rgb:0/0/0
print @rt1[i] @rt2[i] @rt3[i] @rt4[i]
print @rt1[i]+@rt2[i]+@rt3[i]+@rt4[i]
.endc
}
C 29000 69500 1 0 0 gnd-1.sym
{
T 28900 69500 5 10 1 1 0 0 1
netname=0
}
T 23300 68700 9 10 1 0 0 0 2
this script tells us that the sum of current through the circled node is 7.632783e-17
that is 0.00000000000000007632783, close enough to zero for a simulation.
V 26900 71300 100 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 23500 75700 9 15 1 0 0 0 1
KIRCHOFF's Voltage Law (KVL)
T 23700 75200 9 10 1 0 0 0 1
The algebraic sum of all voltages in a loop must equal zero
N 26900 74100 27300 74400 4
{
T 27200 74500 5 10 1 1 0 0 1
netname=Vt1
}
N 30200 74100 30600 74400 4
{
T 30500 74500 5 10 1 1 0 0 1
netname=Vt2
}
N 28400 71600 28800 71900 4
{
T 28700 72000 5 10 1 1 0 0 1
netname=Vt3
}
N 26900 72600 27400 72700 4
{
T 27500 72600 5 10 1 1 0 0 1
netname=Vt5
}
N 26900 71300 27300 71500 4
{
T 27100 71500 5 10 1 1 0 0 1
netname=Vt4
}
N 24600 71900 25000 72200 4
{
T 24900 72300 5 10 1 1 0 0 1
netname=Vta
}
N 24600 70700 25000 71000 4
{
T 24900 71100 5 10 1 1 0 0 1
netname=Vtb
}
N 22500 71300 22200 71700 4
{
T 22000 71800 5 10 1 1 0 0 1
netname=Vtc
}
