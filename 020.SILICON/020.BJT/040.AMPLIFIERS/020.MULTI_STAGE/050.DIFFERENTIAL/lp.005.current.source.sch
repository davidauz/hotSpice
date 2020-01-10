v 20130925 2
C 52700 59100 1 0 0 spice-include-1.sym
{
T 52800 59400 5 10 0 1 0 0 1
device=include
T 52800 59500 5 10 1 1 0 0 1
refdes=A1
T 53200 59200 5 10 1 1 0 0 1
file=2N5551.mod
}
C 60200 60400 1 0 0 spice-directive-1.sym
{
T 60300 60700 5 10 0 1 0 0 1
device=directive
T 60300 60800 5 10 1 1 0 0 1
refdes=A2
T 60200 57900 5 10 1 1 0 0 13
value=.options savecurrents
.control
save all @q1[ic] @q2[ic]  @q3[ic] @q1[ib] @q2[ib]  @q3[ib]
tran 0.5ms 0.08s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Gain with a current source"
plot vi1-vi2 vo2-vo1
set curplottitle="Fourier analysis"
four 100 vo2
.endc


}
N 58300 52300 60500 52300 4
C 50500 60400 1 270 0 voltage-3.sym
{
T 51200 60200 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 51000 60000 5 10 1 1 0 0 1
refdes=V1
T 51000 59800 5 10 1 1 0 0 1
value=DC 5V
}
N 50700 59500 51900 59500 4
C 51800 59200 1 0 0 gnd-1.sym
{
T 51700 59200 5 10 1 1 0 0 1
netname=0
}
C 50500 60400 1 0 0 vcc-1.sym
{
T 50600 60800 5 10 0 1 0 0 1
netname=vcc
}
C 50500 59500 1 270 0 voltage-3.sym
{
T 51200 59300 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 51000 59100 5 10 1 1 0 0 1
refdes=V2
T 51000 58900 5 10 1 1 0 0 1
value=DC 5V
}
C 50900 58600 1 180 0 vee-1.sym
{
T 50900 58600 5 10 0 0 0 0 1
netname=vee
}
C 55200 56900 1 0 0 npn-3.sym
{
T 56100 57400 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 56100 57400 5 10 1 1 0 0 1
refdes=Q1
T 55200 56900 5 10 0 0 0 0 1
model=npn
}
C 59000 56900 1 0 1 npn-3.sym
{
T 58100 57400 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 58100 57400 5 10 1 1 0 6 1
refdes=Q2
T 59000 56900 5 10 0 0 0 0 1
model=npn
}
C 55700 59200 1 270 0 resistor-2.sym
{
T 56050 58800 5 10 0 0 270 0 1
device=RESISTOR
T 55300 58700 5 10 1 1 0 0 1
value=1200
T 56000 58700 5 10 1 1 0 0 1
refdes=RC1
}
C 58300 59200 1 270 0 resistor-2.sym
{
T 58650 58800 5 10 0 0 270 0 1
device=RESISTOR
T 57900 58700 5 10 1 1 0 0 1
value=1200
T 58600 58700 5 10 1 1 0 0 1
refdes=RC2
}
N 55800 56900 55800 56500 4
N 55800 56500 58400 56500 4
N 58400 56500 58400 56900 4
N 55800 57900 55800 58300 4
N 58400 57900 58400 58300 4
N 55800 59200 55800 59800 4
N 55800 59800 58400 59800 4
N 58400 59800 58400 59200 4
N 58400 58200 59000 58400 4
{
T 59000 58400 5 10 1 1 0 0 1
netname=Vo2
}
N 55800 58100 56400 58300 4
{
T 56400 58300 5 10 1 1 0 0 1
netname=Vo1
}
C 56800 59800 1 0 0 vcc-1.sym
{
T 56900 60200 5 10 0 1 0 0 1
netname=vcc
}
C 57200 53300 1 180 0 vee-1.sym
{
T 57200 53300 5 10 0 0 0 0 1
netname=vee
}
N 52900 53900 52900 54400 4
N 52900 55600 52600 56000 4
{
T 52100 56100 5 10 1 1 0 0 1
netname=Vi1
}
C 52800 53600 1 0 0 gnd-1.sym
{
T 53100 53600 5 10 1 1 0 0 1
netname=0
}
N 52900 55300 52900 57400 4
N 52900 57400 55200 57400 4
N 59000 57400 60500 57400 4
N 60500 52300 60500 57400 4
C 56800 51600 1 0 0 vcvs-1.sym
{
T 57000 52650 5 10 0 0 0 0 1
device=SPICE-vcvs
T 57000 52850 5 10 0 0 0 0 1
symversion=0.1
T 57500 51550 5 10 0 0 0 5 1
value=-1
T 57400 52450 5 10 1 1 0 0 1
refdes=E1
}
C 56400 51100 1 0 0 gnd-1.sym
{
T 56700 51100 5 10 1 1 0 0 1
netname=0
}
N 56500 51400 56500 51700 4
N 56500 51700 56800 51700 4
C 58700 51100 1 0 0 gnd-1.sym
{
T 59000 51100 5 10 1 1 0 0 1
netname=0
}
N 58300 51700 58800 51700 4
N 58800 51700 58800 51400 4
N 56800 52300 54000 52300 4
N 54000 52300 54000 57400 4
T 52000 58300 9 10 1 0 0 0 1
signal
L 52500 58300 53300 57500 3 0 0 0 -1 -1
T 61500 56100 9 10 1 0 0 0 3
negative
mirror of
signal
L 60600 57400 61400 56600 3 0 0 0 -1 -1
L 53300 57600 53300 57500 3 0 0 0 -1 -1
L 53200 57500 53300 57500 3 0 0 0 -1 -1
L 60700 57400 60600 57400 3 0 0 0 -1 -1
L 60600 57300 60600 57400 3 0 0 0 -1 -1
T 53400 60700 9 10 1 0 0 0 3
Here the long tail resistor is replaced by a current source made
with one more transistor and some resistors.
Now the output is a good looking sine wave.
N 60500 55500 60200 55900 4
{
T 59700 56000 5 10 1 1 0 0 1
netname=Vi2
}
C 56400 54200 1 0 0 npn-3.sym
{
T 57300 54700 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 57300 54700 5 10 1 1 0 0 1
refdes=Q3
T 56400 54200 5 10 0 0 0 0 1
model=npn
}
N 57000 55200 57000 56500 4
C 54900 55900 1 270 0 resistor-2.sym
{
T 55250 55500 5 10 0 0 270 0 1
device=RESISTOR
T 54400 55400 5 10 1 1 0 0 1
value=11k
T 54500 55600 5 10 1 1 0 0 1
refdes=Rb1
}
C 54900 54500 1 270 0 resistor-2.sym
{
T 55250 54100 5 10 0 0 270 0 1
device=RESISTOR
T 55200 53800 5 10 1 1 0 0 1
value=100k
T 55200 54000 5 10 1 1 0 0 1
refdes=Rb2
}
N 55000 54500 55000 55000 4
N 55000 54700 56400 54700 4
N 56000 54700 55700 55100 4
{
T 55800 55200 5 10 1 1 0 0 1
netname=Vbias
}
C 54800 55900 1 0 0 vcc-1.sym
{
T 54900 56300 5 10 0 1 0 0 1
netname=vcc
}
C 55200 53600 1 180 0 vee-1.sym
{
T 55200 53600 5 10 0 0 0 0 1
netname=vee
}
C 52700 55300 1 270 0 voltage-3.sym
{
T 53400 55100 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 52700 55300 5 10 0 0 0 0 1
value=0 SIN (0 0.005 50  0 0 0) 
T 52700 55300 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 51600 54800 5 10 1 1 0 0 1
refdes=VSIGNAL
}
T 57100 55400 9 10 1 0 0 0 1
@Q3[Ic] = @q1[Ic] + @q2[Ic]
C 56900 54200 1 270 0 resistor-2.sym
{
T 57250 53800 5 10 0 0 270 0 1
device=RESISTOR
T 57200 53500 5 10 1 1 0 0 1
value=2k
T 57200 53700 5 10 1 1 0 0 1
refdes=Rb3
}
T 62000 51500 9 10 1 0 0 0 13
.options savecurrents
.control
save all @q1[ic] @q2[ic]  @q3[ic] @q1[ib] @q2[ib]  @q3[ib]
tran 0.5ms 0.08s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Gain with a current source"
plot vi1-vi2 vo2-vo1
set curplottitle="Current through transistor"
* plot @q3[ib] @q3[ic]
.endc


