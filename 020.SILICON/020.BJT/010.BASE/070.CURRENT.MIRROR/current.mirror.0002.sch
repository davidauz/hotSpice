v 20201211 2
C 52700 48900 1 270 0 voltage-3.sym
{
T 53400 48700 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 53200 48500 5 10 1 1 0 0 1
refdes=V1
T 53200 48300 5 10 1 1 0 0 1
value=DC 10.7V
}
C 52800 47700 1 0 0 gnd-1.sym
{
T 52700 47700 5 10 1 1 0 0 1
netname=0
}
C 52700 48900 1 0 0 vcc-1.sym
C 63000 46400 1 0 0 spice-directive-1.sym
{
T 63100 46700 5 10 0 1 0 0 1
device=directive
T 63100 46800 5 10 1 1 0 0 1
refdes=A1
T 63000 39600 5 10 1 1 0 0 34
value=.options savecurrents
.control
op
save all @R1[i] @R2[i]  @R3[i]
echo "Transistor as a diode"
echo "Voltage drop"
print Vd
echo "R1 current"
print @R1[i] 
echo

echo "R2 is 1000, R3 is 0.01"
print @R2[i] @R3[i]

echo "R2 is 500, R3 is 100"
alter R2 500
alter R3 100
op
print @R2[i] @R3[i]

echo "R2 is 50, R3 is 10"
alter R2 50
alter R3 10
op
print @R2[i] @R3[i]


echo "R2 is 5000, R3 is 100"
alter R2 5000
alter R3 100
op
print @R2[i] @R3[i]

.endc
}
C 55700 42600 1 0 0 npn-3.sym
{
T 56600 43100 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 55700 42600 5 10 0 1 0 0 1
model-name=genericNPN
T 55700 42600 5 10 0 0 0 0 1
model=npn
T 56200 43000 5 10 1 1 0 0 1
refdes=Q2
}
C 57100 46300 1 0 0 vcc-1.sym
C 56200 42100 1 0 0 gnd-1.sym
{
T 56100 42100 5 10 1 1 0 0 1
netname=0
}
N 56300 42400 56300 42600 4
N 55700 43100 55500 43100 4
T 57100 47200 9 10 1 0 0 0 1
Current mirror
C 58100 43300 1 0 0 npn-3.sym
{
T 59000 43800 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 58100 43300 5 10 0 1 0 0 1
model-name=genericNPN
T 58100 43300 5 10 0 0 0 0 1
model=npn
T 58600 43700 5 10 1 1 0 0 1
refdes=Q3
}
C 58500 45700 1 0 0 vcc-1.sym
C 58600 42800 1 0 0 gnd-1.sym
{
T 58500 42800 5 10 1 1 0 0 1
netname=0
}
N 58700 43100 58700 43300 4
N 55500 43800 55500 43100 4
C 57400 45900 1 90 1 resistor-2.sym
{
T 57050 45500 5 10 0 0 90 6 1
device=RESISTOR
T 57500 45500 5 10 1 1 180 6 1
value=1000
T 57500 45300 5 10 1 1 180 6 1
refdes=R2
}
N 57300 45900 57300 46300 4
N 57300 45000 57300 44600 4
N 56300 43800 56300 43600 4
C 58800 45400 1 90 1 resistor-2.sym
{
T 58450 45000 5 10 0 0 90 6 1
device=RESISTOR
T 58900 44900 5 10 1 1 180 6 1
value=0.01
T 58900 44700 5 10 1 1 180 6 1
refdes=R3
}
N 58700 45700 58700 45400 4
N 58700 44500 58700 44300 4
C 51800 43000 1 0 0 npn-3.sym
{
T 52700 43500 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 51800 43000 5 10 0 1 0 0 1
model-name=genericNPN
T 51800 43000 5 10 0 0 0 0 1
model=npn
T 52300 43500 5 10 1 1 0 0 1
refdes=Q1
}
C 52200 45900 1 0 0 vcc-1.sym
C 52300 42500 1 0 0 gnd-1.sym
{
T 52200 42500 5 10 1 1 0 0 1
netname=0
}
N 52400 42800 52400 43000 4
N 51800 43500 51600 43500 4
N 51600 44200 51600 43500 4
C 52500 45500 1 90 1 resistor-2.sym
{
T 52150 45100 5 10 0 0 90 6 1
device=RESISTOR
T 52600 45100 5 10 1 1 180 6 1
value=1000
T 52600 44900 5 10 1 1 180 6 1
refdes=R1
}
N 52400 45500 52400 45900 4
N 52400 44000 52400 44600 4
T 51900 47100 9 10 1 0 0 0 1
Transistor as a diode
N 51600 44200 52400 44200 4
N 52400 44200 52900 44500 4
{
T 52900 44300 5 10 1 1 0 0 1
netname=Vd
}
T 55100 47800 9 10 1 0 0 0 13
In "Box 1" is a transistor connected in order to use the BE junction only, making it work as a plain diode.
The Vd voltage is the diode drop of the BE junction.
Now what happens if we apply this voltage to the base of another transistor?
Provided that the two transistors are equal, the current flowing through their bases wil be the exact same value.
N.B. this is the reason why Q1, Q2, Q4 and Q6 are connected in this weird way: to make sure that the BE junction 
is the same as the one in Q3, Q5, Q7.
This is what happens in "Box 2": the current through R3 is the same as the current in R2, even if R3 is way smaller than R2.
If for example Q2 was a diode instead, there would be no way to make sure of the voltage drop being 
the same as that in Q3.
Same base current means same collector current, so here we are.
The current flowing through R2 will be closely mirrored in R3.
In the example the script changes the value for R2 and R3, showing that the current flowing through the two is
(almost) the same.
N 55500 43800 56400 43800 4
N 56400 43800 57300 44600 4
N 58100 43800 57300 44600 4
N 57300 44600 57800 44900 4
{
T 57800 44700 5 10 1 1 0 0 1
netname=Vt
}
L 56500 44000 56500 43900 3 0 0 0 -1 -1
L 56500 43900 56600 43900 3 0 0 0 -1 -1
L 57800 44000 57900 44000 3 0 0 0 -1 -1
L 57900 44000 57900 44100 3 0 0 0 -1 -1
T 56600 42400 9 10 1 0 0 0 2
Currents I1 and I2 are
guaranteed to be the same
C 53900 37500 1 0 1 npn-3.sym
{
T 53000 38000 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 53900 37500 5 10 0 1 0 6 1
model-name=genericNPN
T 53900 37500 5 10 0 0 0 6 1
model=npn
T 53400 37900 5 10 1 1 0 6 1
refdes=Q4
}
N 53300 37000 53300 37500 4
C 55100 37500 1 0 0 npn-3.sym
{
T 56000 38000 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 55100 37500 5 10 0 1 0 0 1
model-name=genericNPN
T 55100 37500 5 10 0 0 0 0 1
model=npn
T 55600 37900 5 10 1 1 0 0 1
refdes=Q5
}
N 55700 37000 55700 37500 4
C 53400 39900 1 90 1 resistor-2.sym
{
T 53050 39500 5 10 0 0 90 6 1
device=RESISTOR
T 53500 39500 5 10 1 1 180 6 1
value=1000
T 53500 39300 5 10 1 1 180 6 1
refdes=R4
}
N 53300 39900 53300 40100 4
N 53300 38500 53300 39000 4
C 55800 39900 1 90 1 resistor-2.sym
{
T 55450 39500 5 10 0 0 90 6 1
device=RESISTOR
T 55900 39400 5 10 1 1 180 6 1
value=0.01
T 55900 39200 5 10 1 1 180 6 1
refdes=R5
}
N 55700 39900 55700 40100 4
N 55700 39000 55700 38500 4
C 61100 39600 1 180 1 pnp-3.sym
{
T 62000 39100 5 10 0 0 180 6 1
device=PNP_TRANSISTOR
T 61100 39600 5 10 0 0 180 6 1
model-name=genericPNP
T 61100 39600 5 10 0 0 180 6 1
model=pnp
T 61600 39200 5 10 1 1 180 6 1
refdes=Q7
}
N 58900 38400 59900 38400 4
N 59900 38400 59900 39100 4
N 59500 39100 61100 39100 4
N 58900 39600 58900 40000 4
N 58900 40000 61700 40000 4
N 61700 40000 61700 39600 4
C 59500 39600 1 180 0 pnp-3.sym
{
T 58600 39100 5 10 0 0 180 0 1
device=PNP_TRANSISTOR
T 59500 39600 5 10 0 0 180 0 1
model-name=genericPNP
T 59500 39600 5 10 0 0 180 0 1
model=pnp
T 59000 39200 5 10 1 1 180 0 1
refdes=Q6
}
C 60100 40000 1 0 0 vcc-1.sym
N 61700 36800 58900 36800 4
C 60200 36500 1 0 0 gnd-1.sym
{
T 60100 36500 5 10 1 1 0 0 1
netname=0
}
T 59300 40700 9 10 1 0 0 0 1
Here is the NPN configuration
C 59000 38200 1 90 1 resistor-2.sym
{
T 58650 37800 5 10 0 0 90 6 1
device=RESISTOR
T 59100 37800 5 10 1 1 180 6 1
value=1000
T 59100 37600 5 10 1 1 180 6 1
refdes=R6
}
C 61800 38200 1 90 1 resistor-2.sym
{
T 61450 37800 5 10 0 0 90 6 1
device=RESISTOR
T 61900 37800 5 10 1 1 180 6 1
value=1000
T 61900 37600 5 10 1 1 180 6 1
refdes=R7
}
N 58900 38200 58900 38600 4
N 58900 37300 58900 36800 4
N 61700 37300 61700 36800 4
N 61700 38200 61700 38600 4
N 53900 38000 55100 38000 4
C 54400 40100 1 0 0 vcc-1.sym
N 53300 40100 55700 40100 4
N 53300 38800 54300 38800 4
N 54300 38800 54300 38000 4
C 54400 36700 1 0 0 gnd-1.sym
{
T 54300 36700 5 10 1 1 0 0 1
netname=0
}
N 53300 37000 55700 37000 4
T 53100 40700 9 10 1 0 0 0 1
Here is a more familiar arrangement
T 56400 44000 9 10 1 0 0 0 1
I1
T 57900 44100 9 10 1 0 0 0 1
I2
B 50900 41900 3200 4500 3 10 1 0 -1 -1 0 -1 -1 -1 -1 -1
T 51100 42100 9 10 1 0 0 0 1
Box 1
B 55000 41500 5600 5500 3 10 1 0 -1 -1 0 -1 -1 -1 -1 -1
T 55400 41700 9 10 1 0 0 0 1
Box 2
