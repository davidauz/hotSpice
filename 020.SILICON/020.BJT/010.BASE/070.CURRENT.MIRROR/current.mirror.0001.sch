v 20130925 2
C 58400 60200 1 0 0 spice-directive-1.sym
{
T 58500 60500 5 10 0 1 0 0 1
device=directive
T 58500 60600 5 10 1 1 0 0 1
refdes=A2
T 58400 55300 5 10 1 1 0 0 25
value=.options savecurrents
.control
save all @r2[i] @r1[i]
op
echo "R1 is 500"
print @r1[i] @r2[i]
alter R1 400
op
echo "R1 is 400"
print @r1[i] @r2[i]
alter R1 300
op
echo "R1 is 300"
print @r1[i] @r2[i]
alter R1 200
op
echo "R1 is 200"
print @r1[i] @r2[i]
alter R1 100
op
echo "R1 is 100"
print @r1[i] @r2[i]
echo "result: WRONG!"
.endc

}
C 50500 60400 1 270 0 voltage-3.sym
{
T 51200 60200 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 51000 60000 5 10 1 1 0 0 1
refdes=V1
T 51000 59800 5 10 1 1 0 0 1
value=DC 5V
}
N 50700 59500 50700 59100 4
C 50600 58800 1 0 0 gnd-1.sym
{
T 50500 58800 5 10 1 1 0 0 1
netname=0
}
C 50500 60400 1 0 0 vcc-1.sym
{
T 50600 60800 5 10 0 1 0 0 1
netname=vcc
}
C 55100 61100 1 0 0 vcc-1.sym
{
T 55200 61500 5 10 0 1 0 0 1
netname=vcc
}
N 53800 61100 56600 61100 4
C 56500 59800 1 270 0 resistor-2.sym
{
T 56850 59400 5 10 0 0 270 0 1
device=RESISTOR
T 56000 59600 5 10 1 1 0 0 1
value=200
T 56100 59100 5 10 1 1 0 0 1
refdes=R2
}
N 53800 55800 56600 55800 4
N 55300 54900 55300 55800 4
C 55200 54600 1 0 0 gnd-1.sym
{
T 55100 54600 5 10 1 1 0 0 1
netname=0
}
N 53800 59800 53800 61100 4
N 56600 59800 56600 61100 4
C 53700 59800 1 270 0 resistor-2.sym
{
T 54050 59400 5 10 0 0 270 0 1
device=RESISTOR
T 53200 59600 5 10 1 1 0 0 1
value=500
T 53300 59100 5 10 1 1 0 0 1
refdes=R1
}
C 54400 57400 1 0 0 cccs-1.sym
{
T 54600 58450 5 10 0 0 0 0 1
device=SPICE-cccs
T 55000 58250 5 10 1 1 0 0 1
refdes=F1
T 54600 58650 5 10 0 0 0 0 1
symversion=0.1
T 55100 57350 5 10 1 0 0 5 1
value=1
}
N 53800 58900 53800 58100 4
N 53800 58100 54400 58100 4
N 55900 58100 56600 58100 4
N 56600 58100 56600 58900 4
N 55900 57500 56600 57500 4
N 56600 57500 56600 55800 4
N 54400 57500 53800 57500 4
N 53800 57500 53800 55800 4
T 50700 61800 9 10 1 0 0 0 8
What we want is something to check the current flowing in one wire and duplicate it into another wire.
In this example we are using the SPICE CCCS: Current Controlled Current Source.
As we see in the simulation, the current through R2 is always the same as the current in R1.
Everything is fine until we set R1 to 100, that is less than R2.
At this point SPICE tells us that the current in R1 is 5mA, and so is the current in R2.
But!  R2 is 200, and since V=R*I, 200*0.05=10V.
So we see that this SPICE component acts as a current generator, that produces current when it is needed regardless of the voltage supplied.
A current mirror is different, in that it LIMITS the current in the mirrored net.
