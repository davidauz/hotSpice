v 20130925 2
T 56800 63900 9 10 1 0 0 0 15
Poor man's method to calculate the bias resistors.

Base parameters:
- Vcc voltage value (10V)
- Transistor beta (100)
- desired gain (10)
- Load resistance (R5=47k)

The following are coarse rule of thumb to avoid complex formulas.
R3 = R5 /5 = 10k
R4 = R3/gain = 10k/10 = 1000
Ic( mA ) = [(Vcc / 2) / (R3 + R4)] * 1.000 =  [(10/2)/(10000+1000)]*1000 = .4545
R4 voltage drop VR4 = (Ic * R4) / 1000 = .495*1000/1000 = .495
R2 = beta *R4 /10 = 100*1000/10=10000
R1=((Vcc*R2)/(Vbe+VR4))-R2 = ((10*10000)/(.7+.495))-10000=73682
C 55800 62500 1 270 0 voltage-3.sym
{
T 56500 62300 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 56300 62100 5 10 1 1 0 0 1
refdes=V1
T 56300 61900 5 10 1 1 0 0 1
value=DC 9V
}
N 56000 61600 56000 61200 4
C 55900 60900 1 0 0 gnd-1.sym
{
T 55800 60900 5 10 1 1 0 0 1
netname=0
}
C 55800 62600 1 0 0 vcc-1.sym
{
T 55900 63000 5 10 0 1 0 0 1
netname=vcc
}
C 55200 59700 1 270 0 voltage-3.sym
{
T 55900 59500 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 55200 59700 5 10 0 0 0 0 1
value=0 SIN (0 0.01 50  0 0 0) 
T 55200 59700 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 54100 59200 5 10 1 1 0 0 1
refdes=VSIGNAL
}
C 55300 58500 1 0 0 gnd-1.sym
{
T 55200 58500 5 10 1 1 0 0 1
netname=0
}
N 56000 62500 56000 62600 4
C 59500 59200 1 0 0 npn-3.sym
{
T 60400 59700 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 59500 59200 5 10 0 1 0 0 1
model-name=genericNPN
T 59500 59200 5 10 0 0 0 0 1
model=npn
T 60000 59600 5 10 1 1 0 0 1
refdes=Q1
}
C 57900 61500 1 270 0 resistor-2.sym
{
T 58250 61100 5 10 0 0 270 0 1
device=RESISTOR
T 57500 61000 5 10 1 1 0 0 1
value=73682
T 58200 61000 5 10 1 1 0 0 1
refdes=R1
}
C 57900 58900 1 270 0 resistor-2.sym
{
T 58250 58500 5 10 0 0 270 0 1
device=RESISTOR
T 57500 58400 5 10 1 1 0 0 1
value=10000
T 58200 58400 5 10 1 1 0 0 1
refdes=R2
}
C 60000 61500 1 270 0 resistor-2.sym
{
T 60350 61100 5 10 0 0 270 0 1
device=RESISTOR
T 59600 61000 5 10 1 1 0 0 1
value=10k
T 60300 61000 5 10 1 1 0 0 1
refdes=R3
}
N 60100 61500 60100 61900 4
N 58000 61900 60100 61900 4
N 58000 61900 58000 61500 4
N 58000 58000 58000 57500 4
N 58000 57500 61900 57500 4
N 60100 60200 60100 60600 4
N 58000 58900 58000 60600 4
C 59100 57200 1 0 0 gnd-1.sym
{
T 59000 57200 5 10 1 1 0 0 1
netname=0
}
C 59000 61900 1 0 0 vcc-1.sym
{
T 59100 62300 5 10 0 1 0 0 1
netname=vcc
}
C 60600 60200 1 0 0 capacitor-1.sym
{
T 60800 60900 5 10 0 0 0 0 1
device=CAPACITOR
T 60800 61100 5 10 0 0 0 0 1
symversion=0.1
T 60900 60700 5 10 1 1 0 0 1
refdes=C2
T 60900 60000 5 10 1 1 0 0 1
value=1m
}
N 60600 60400 60100 60400 4
C 61800 58900 1 270 0 resistor-2.sym
{
T 62150 58500 5 10 0 0 270 0 1
device=RESISTOR
T 61400 58400 5 10 1 1 0 0 1
value=47k
T 62100 58400 5 10 1 1 0 0 1
refdes=R5
}
N 61900 58900 61900 60400 4
N 61900 58000 61900 57500 4
N 61500 60400 61900 60400 4
N 61900 60400 62400 60900 4
{
T 62200 60400 5 10 1 1 0 0 1
netname=Vout
}
C 53700 66300 1 0 0 spice-directive-1.sym
{
T 53800 66600 5 10 0 1 0 0 1
device=directive
T 53800 66700 5 10 1 1 0 0 1
refdes=A1
T 53700 64700 5 10 1 1 0 0 9
value=.options savecurrents
.control
.savecurrents all
.save all
tran 0.5ms 0.08s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot vs vout
.endc
}
N 55500 59700 56000 60200 4
{
T 55800 59700 5 10 1 1 0 0 1
netname=Vs
}
C 56300 59500 1 0 0 capacitor-1.sym
{
T 56500 60200 5 10 0 0 0 0 1
device=CAPACITOR
T 56500 60400 5 10 0 0 0 0 1
symversion=0.1
T 56600 60000 5 10 1 1 0 0 1
refdes=C1
T 56600 59300 5 10 1 1 0 0 1
value=1m
}
N 55400 59700 56300 59700 4
N 57200 59700 58000 59700 4
N 58000 59700 59500 59700 4
N 58600 59700 59100 60200 4
{
T 58900 59700 5 10 1 1 0 0 1
netname=Vb
}
C 60000 58800 1 270 0 resistor-2.sym
{
T 60350 58400 5 10 0 0 270 0 1
device=RESISTOR
T 59600 58300 5 10 1 1 0 0 1
value=1000
T 60300 58300 5 10 1 1 0 0 1
refdes=R4
}
N 60100 58800 60100 59200 4
N 60100 57900 60100 57500 4
B 53700 56800 9300 6700 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 53800 53600 9 10 1 0 0 0 16
R1 and R2 act as a voltage divider to bring the base voltage up from ground to the
operating voltage of the BE junction.v
This together with the power voltage determines the ratio of R1 and R2.


This plus the signal is the base voltage, determining the current through the BE junction via R4.

The transistor's job is to let go 100 times that current through the collector, so we have
to think about how much current we want through the base.

This tells us the values of R1 (and consequently of R2 since we know theirs ratio)
and R4.

   ey also determine the base current in 
absence of a signal and how up in their Y axis will be Vb and @q1[ib] on their plots.
So if my signal is 10mA and I want it amplified to 
T 63500 56300 9 10 1 0 0 0 8
Suppose we want 1.2 v on the base, this gives

Vb=1.2=Vcc*R2/(R1+R2)=9*R2/(R1+R2)

1.2=9*R2/(R1+R2)
R2/(R1+R2)=1.3333333
R2/R1= 1.33333 -1
R1=R2/0.333333
L 59600 56100 63400 56700 3 0 0 0 -1 -1
T 63500 53900 9 10 1 0 0 0 7
Suppose we want 100mA through the base.
We know there are 1.2v, there will be a voltage drop of 0.7v
so it's 1.2-0.7=0.56v

v=R*I
R=v/I=0.5/0.1=5

L 61400 55700 63300 55200 3 0 0 0 -1 -1
C 59500 48700 1 0 0 npn-3.sym
{
T 60400 49200 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 59500 48700 5 10 0 1 0 0 1
model-name=genericNPN
T 59500 48700 5 10 0 0 0 0 1
model=npn
T 60000 49100 5 10 1 1 0 0 1
refdes=Q1a
}
C 57900 51000 1 270 0 resistor-2.sym
{
T 58250 50600 5 10 0 0 270 0 1
device=RESISTOR
T 57500 50500 5 10 1 1 0 0 1
value=80k
T 58200 50500 5 10 1 1 0 0 1
refdes=R1a
}
C 57900 48400 1 270 0 resistor-2.sym
{
T 58250 48000 5 10 0 0 270 0 1
device=RESISTOR
T 57500 47900 5 10 1 1 0 0 1
value=10k
T 58200 47900 5 10 1 1 0 0 1
refdes=R2a
}
N 58000 51000 58000 51800 4
N 58000 47500 58000 47000 4
N 58000 47000 60100 47000 4
N 60100 49700 60100 50100 4
N 58000 48400 58000 50100 4
C 59100 46700 1 0 0 gnd-1.sym
{
T 59000 46700 5 10 1 1 0 0 1
netname=0
}
N 58000 49200 59500 49200 4
N 58600 49200 59100 49700 4
{
T 58600 49600 5 10 1 1 0 0 1
netname=Vba
}
C 60000 48300 1 270 0 resistor-2.sym
{
T 60350 47900 5 10 0 0 270 0 1
device=RESISTOR
T 59600 47800 5 10 1 1 0 0 1
value=1k
T 60300 47800 5 10 1 1 0 0 1
refdes=R4a
}
N 60100 48300 60100 48700 4
N 60100 47400 60100 47000 4
B 53700 46300 9300 6700 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
N 60100 50100 59300 50100 4
N 59300 50100 59300 49200 4
C 57800 51800 1 0 0 vcc-1.sym
{
T 57900 52200 5 10 0 1 0 0 1
netname=vcc
}
C 65500 51800 1 270 0 resistor-2.sym
{
T 65850 51400 5 10 0 0 270 0 1
device=RESISTOR
T 65100 51300 5 10 1 1 0 0 1
value=80k
T 65800 51300 5 10 1 1 0 0 1
refdes=R1b
}
C 65500 49200 1 270 0 resistor-2.sym
{
T 65850 48800 5 10 0 0 270 0 1
device=RESISTOR
T 65100 48700 5 10 1 1 0 0 1
value=10k
T 65800 48700 5 10 1 1 0 0 1
refdes=R2b
}
C 65400 52600 1 0 0 vcc-1.sym
{
T 65500 53000 5 10 0 1 0 0 1
netname=vcc
}
N 65600 51800 65600 52600 4
N 65600 48300 65600 47800 4
N 65600 49200 65600 50900 4
C 65500 47500 1 0 0 gnd-1.sym
{
T 65400 47500 5 10 1 1 0 0 1
netname=0
}
C 67100 49100 1 270 0 resistor-2.sym
{
T 67450 48700 5 10 0 0 270 0 1
device=RESISTOR
T 66700 48600 5 10 1 1 0 0 1
value=1k
T 67400 48600 5 10 1 1 0 0 1
refdes=R4b
}
N 67200 48200 67200 48000 4
N 67200 48000 65600 48000 4
N 67200 49100 67200 50000 4
N 67200 50000 65600 50000 4
N 66400 50000 67200 50200 4
{
T 67000 50300 5 10 1 1 0 0 1
netname=Vbb
}
C 69300 51800 1 270 0 resistor-2.sym
{
T 69650 51400 5 10 0 0 270 0 1
device=RESISTOR
T 68900 51300 5 10 1 1 0 0 1
value=80k
T 69600 51300 5 10 1 1 0 0 1
refdes=R1c
}
C 69300 49200 1 270 0 resistor-2.sym
{
T 69650 48800 5 10 0 0 270 0 1
device=RESISTOR
T 68900 48700 5 10 1 1 0 0 1
value=909
T 69600 48700 5 10 1 1 0 0 1
refdes=R2c
}
C 69200 52600 1 0 0 vcc-1.sym
{
T 69300 53000 5 10 0 1 0 0 1
netname=vcc
}
N 69400 51800 69400 52600 4
N 69400 48300 69400 47800 4
N 69400 49200 69400 50900 4
C 69300 47500 1 0 0 gnd-1.sym
{
T 69200 47500 5 10 1 1 0 0 1
netname=0
}
N 69400 50300 70200 50500 4
{
T 70000 50600 5 10 1 1 0 0 1
netname=Vbc
}
N 60100 48400 60700 48700 4
{
T 60700 48500 5 10 1 1 0 0 1
netname=Vea
}
T 60500 50900 9 10 1 0 0 0 2
vba-vea is the transistor 
diode drop, around 0.7V
A 60500 49900 900 283 234 3 0 0 0 -1 -1
T 53900 52500 9 10 1 0 0 0 2
Let's start from an oversimplification, and 
examine the BE junction only
