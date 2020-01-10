v 20130925 2
C 49900 45800 1 270 0 voltage-3.sym
{
T 50600 45600 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 50400 45400 5 10 1 1 0 0 1
refdes=V1
T 50400 45200 5 10 1 1 0 0 1
value=DC 10.7V
}
C 50000 44600 1 0 0 gnd-1.sym
{
T 49900 44600 5 10 1 1 0 0 1
netname=0
}
C 49900 45800 1 0 0 vcc-1.sym
C 61600 46800 1 0 0 spice-directive-1.sym
{
T 61700 47100 5 10 0 1 0 0 1
device=directive
T 61700 47200 5 10 1 1 0 0 1
refdes=A1
T 61600 39900 5 10 1 1 0 0 34
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
C 52600 43400 1 0 0 npn-3.sym
{
T 53500 43900 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 52600 43400 5 10 0 1 0 0 1
model-name=genericNPN
T 52600 43400 5 10 0 0 0 0 1
model=npn
T 53100 43900 5 10 1 1 0 0 1
refdes=Q1
}
C 53000 46300 1 0 0 vcc-1.sym
C 53100 42900 1 0 0 gnd-1.sym
{
T 53000 42900 5 10 1 1 0 0 1
netname=0
}
N 53200 43200 53200 43400 4
N 52600 43900 52400 43900 4
N 52400 44600 52400 43900 4
C 53300 45900 1 90 1 resistor-2.sym
{
T 52950 45500 5 10 0 0 90 6 1
device=RESISTOR
T 53400 45500 5 10 1 1 180 6 1
value=1000
T 53400 45300 5 10 1 1 180 6 1
refdes=R1
}
N 53200 45900 53200 46300 4
N 53200 44400 53200 45000 4
T 51900 47100 9 10 1 0 0 0 1
Transistor as a diode
N 52400 44600 53200 44600 4
N 53200 44600 53700 44900 4
{
T 53700 44700 5 10 1 1 0 0 1
netname=Vd
}
T 53500 48000 9 10 1 0 0 0 7
On the left there is a transistor connected in order to use the BE junction only, making it work as a plain diode.
The Vd voltage is the diode drop of the BE junction.
Now what happens if we apply this voltage to the base of another transistor?
Provided that the two transistors are equal, the current flowing through their bases wil be the exact same.
Same base current means same collector current, so here we are.
The current flowing through R2 will be closely mirrored in R3.
In the example the script changes the value for R2 and R3, showing that the current flowing through the two is (almost) the same.
N 55500 43800 56400 43800 4
N 56400 43800 57300 44600 4
N 58100 43800 57300 44600 4
N 57600 44300 58100 44600 4
{
T 58100 44400 5 10 1 1 0 0 1
netname=Vt
}
L 56500 44000 56500 43900 3 0 0 0 -1 -1
L 56500 43900 56600 43900 3 0 0 0 -1 -1
L 57800 44000 57900 44000 3 0 0 0 -1 -1
L 57900 44000 57900 44100 3 0 0 0 -1 -1
T 56700 43600 9 10 1 0 0 0 2
same current
   here
