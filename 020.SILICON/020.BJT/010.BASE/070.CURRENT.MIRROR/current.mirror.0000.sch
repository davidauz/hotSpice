v 20130925 2
C 58400 60200 1 0 0 spice-directive-1.sym
{
T 58500 60500 5 10 0 1 0 0 1
device=directive
T 58500 60600 5 10 1 1 0 0 1
refdes=A2
T 58300 56500 5 10 1 1 0 0 20
value=.options savecurrents
.control
save all @r2[i] @r1[i]
op
print @r1[i] @r2[i]
alter R1 600
op
echo "Now R1 is 600"
print @r1[i] @r2[i]
alter R1 100
op
echo "Now R1 is 100"
print @r1[i] @r2[i]
alter R1 10k
op
echo "Now R1 is 10k"
print @r1[i] @r2[i]
echo "RESULT: no good.  The currents are all different"
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
T 52200 61600 9 10 1 0 0 0 5
The current mirror is a useful device to make the current in one wire
the same as the current in another.

To understand this, first see a bare bones circuit with two resistors only.

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
N 53800 57700 56600 57700 4
N 55300 56800 55300 57700 4
C 55200 56500 1 0 0 gnd-1.sym
{
T 55100 56500 5 10 1 1 0 0 1
netname=0
}
N 53800 59800 53800 61100 4
N 53800 57700 53800 58900 4
N 56600 57700 56600 58900 4
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
T 49400 56900 9 10 1 0 0 0 9
As per Ohm,s law, the current I1 in R1 will be 
I1=5/500=0.01A=10mA
while in R2
I2=5/200=0.025A=25mA
Now suppose that R1 is a pot and I have fun
turning it up and down.
What will happen to R2?  Nothing, because it is still
connected to the same voltage, so nothing will 
change there.
