v 20130925 2
C 60100 58000 1 0 0 spice-include-1.sym
{
T 60200 58300 5 10 0 1 0 0 1
device=include
T 60200 58400 5 10 1 1 0 0 1
refdes=A1
T 60600 58100 5 10 1 1 0 0 1
file=2N5551.mod
}
C 60200 60400 1 0 0 spice-directive-1.sym
{
T 60300 60700 5 10 0 1 0 0 1
device=directive
T 60300 60800 5 10 1 1 0 0 1
refdes=A2
T 60200 59400 5 10 1 1 0 0 6
value=.control
dc vs -0.1v 0.1v 10mv
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot vin vor vo1 vo2
.endc
}
N 58300 53800 60500 53800 4
{
T 58800 53800 5 10 1 1 0 0 1
netname=Vor
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
T 55200 56900 5 10 0 0 0 0 1
model-name=2N5551
T 56100 57400 5 10 1 1 0 0 1
refdes=Q1
}
C 59000 56900 1 0 1 npn-3.sym
{
T 58100 57400 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 59000 56900 5 10 0 0 0 6 1
model-name=2N5551
T 58100 57400 5 10 1 1 0 6 1
refdes=Q2
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
C 56900 55900 1 270 0 resistor-2.sym
{
T 57250 55500 5 10 0 0 270 0 1
device=RESISTOR
T 56500 55400 5 10 1 1 0 0 1
value=5k
T 57200 55400 5 10 1 1 0 0 1
refdes=RE
}
N 55800 56900 55800 56500 4
N 55800 56500 58400 56500 4
N 57000 55900 57000 56500 4
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
C 57200 55000 1 180 0 vee-1.sym
{
T 57200 55000 5 10 0 0 0 0 1
netname=vee
}
C 52700 55300 1 270 0 voltage-3.sym
{
T 53400 55100 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 52200 54700 5 10 1 1 0 0 1
value=DC 0
T 52200 54900 5 10 1 1 0 0 1
refdes=VS
}
N 52900 53900 52900 54400 4
N 52900 55600 52600 56000 4
{
T 52100 56100 5 10 1 1 0 0 1
netname=Vin
}
C 52800 53600 1 0 0 gnd-1.sym
{
T 53100 53600 5 10 1 1 0 0 1
netname=0
}
N 52900 55300 52900 57400 4
N 52900 57400 55200 57400 4
N 59000 57400 60500 57400 4
N 60500 53800 60500 57400 4
C 56800 53100 1 0 0 vcvs-1.sym
{
T 57000 54150 5 10 0 0 0 0 1
device=SPICE-vcvs
T 57000 54350 5 10 0 0 0 0 1
symversion=0.1
T 57500 53050 5 10 0 0 0 5 1
value=-1
T 57400 53950 5 10 1 1 0 0 1
refdes=E1
}
C 56400 52600 1 0 0 gnd-1.sym
{
T 56700 52600 5 10 1 1 0 0 1
netname=0
}
N 56500 52900 56500 53200 4
N 56500 53200 56800 53200 4
C 58700 52600 1 0 0 gnd-1.sym
{
T 59000 52600 5 10 1 1 0 0 1
netname=0
}
N 58300 53200 58800 53200 4
N 58800 53200 58800 52900 4
N 56800 53800 54000 53800 4
N 54000 53800 54000 57400 4
T 52000 60900 9 10 1 0 0 0 8
This is an example of a differential amplifier or " long tailed pair" or "differential pair".
The "Tail" is the Re resistor, usually of much bigger value than the others, acting as a current source.
The circuit amplifies the voltage difference between the two inputs.
When the inputs are at ther same value, then the output voltages is (in theory) zero.
What happens in pratice is that there still is a voltage, called Common Mode Rejection Ratio, CMMR.
This value is a parameter of the quality of the circuit: the smaller CMMR, the better the circuit.
The VCVS (Voltage Controlled Voltage Source) is there to give Q2 a voltage that is a negative
mirror of the input signal to Q1.
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
T 59200 53200 9 10 1 0 0 0 2
This is a dependent voltage source, configured to 
output the exact opposite of what is comint from Vin
