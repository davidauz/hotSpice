v 20130925 2
C 64200 58500 1 90 0 resistor-2.sym
{
T 63900 58900 5 10 1 1 180 0 1
refdes=R3
T 64200 58500 5 10 1 1 0 0 1
value=1k
}
C 59600 58500 1 90 0 resistor-2.sym
{
T 59300 58900 5 10 1 1 180 0 1
refdes=R1
T 59600 58500 5 10 1 1 0 0 1
value=1k
}
C 62700 59400 1 270 0 resistor-2.sym
{
T 62400 58800 5 10 1 1 0 0 1
refdes=R2
T 62900 58500 5 10 1 1 0 0 1
value=10k
}
C 61000 59400 1 270 0 resistor-2.sym
{
T 60700 58800 5 10 1 1 0 0 1
refdes=R4
T 61200 58500 5 10 1 1 0 0 1
value=10k
}
C 63500 55900 1 0 0 npn-3.sym
{
T 63500 55900 5 10 0 1 0 0 1
model-name=genericNPN
T 63500 55900 5 10 0 0 0 0 1
model=npn
T 64500 56300 5 10 1 1 0 0 1
refdes=Q2
}
C 60100 55900 1 0 1 npn-3.sym
{
T 60100 55900 5 10 0 0 0 0 1
model-name=genericNPN
T 60100 55900 5 10 0 0 0 0 1
model=npn
T 59200 56400 5 10 1 1 0 6 1
refdes=Q1
}
N 59500 60400 59500 59400 4
N 64100 60400 64100 59400 4
N 62800 59400 62800 60400 4
N 61100 59400 61100 60400 4
N 59500 55900 59500 55000 4
N 59500 55000 64100 55000 4
N 64100 55000 64100 55900 4
N 61100 58500 61100 57400 4
N 63500 56400 62800 56400 4
N 62800 56400 61100 57400 4
N 62800 58500 62800 57400 4
N 60100 56400 61200 56400 4
N 61200 56400 62800 57400 4
N 59500 60400 64100 60400 4
N 59500 56900 59500 58500 4
N 64100 56900 64100 58500 4
C 59900 57200 1 0 0 capacitor-1.sym
{
T 60100 57700 5 10 1 1 0 0 1
refdes=C1
T 59900 57200 5 10 1 1 0 0 1
value=10uf
}
C 63000 57200 1 0 0 capacitor-1.sym
{
T 63200 57700 5 10 1 1 0 0 1
refdes=C2
T 63000 57200 5 10 1 1 0 0 1
value=10uf
}
N 60800 57400 61100 57400 4
N 63000 57400 62800 57400 4
N 59900 57400 59500 57400 4
N 63900 57400 64100 57400 4
C 66400 60000 1 0 0 vcc-1.sym
C 66500 58800 1 0 0 gnd-1.sym
C 66400 60000 1 270 0 voltage-3.sym
{
T 67100 59800 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 66900 59600 5 10 1 1 0 0 1
refdes=V1
T 66900 59400 5 10 1 1 0 0 1
value=DC 10V
}
C 61700 54700 1 0 0 gnd-1.sym
C 61600 60400 1 0 0 vcc-1.sym
N 64100 57400 64700 57800 4
{
T 64500 57900 5 10 1 1 0 0 1
netname=o2
}
N 59500 57400 58800 57800 4
{
T 58500 57900 5 10 1 1 0 0 1
netname=o1
}
T 60100 61100 9 12 1 0 0 0 8
Let's say that the base of Q1 is positive and Q1 conducts.
Current flows through R1 and R4 (through C1), down into the collector of Q1;
While C1 is charging, it builds up a positive voltage on the base of Q2.
This voltage reaches a point when the base voltage for Q2 is enough for Q2 to start conducting.
When this happens, the current flowing through its collector lowers the voltage on the base of Q1.
Q1 does not conduct anymore, and the cycle starts all the same from Q2 conducting.

This example also uses gnuplot for a 3D fence plot for better understanding.
C 65500 57200 1 0 0 spice-directive-1.sym
{
T 65600 57500 5 10 0 1 0 0 1
device=directive
T 65600 57600 5 10 1 1 0 0 1
refdes=A1
T 65500 55000 5 10 1 1 0 0 12
value=.options savecurrents
.print tran @q1[ic] @q2[ic]
.control
save all @q1[ic] @q2[ic] @c1[i] @c2[i] @q1[ib] @q2[ib] 
tran 4ms 1s 600ms
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Base currents"
plot @q1[ic] @q2[ic]  
set curplottitle="Collector voltages"
plot  o1 o2
.endc
}
