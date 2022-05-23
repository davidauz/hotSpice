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
C 59200 48600 1 0 0 spice-directive-1.sym
{
T 59300 48900 5 10 0 1 0 0 1
device=directive
T 59300 49000 5 10 1 1 0 0 1
refdes=A1
T 59100 42900 5 10 1 1 0 0 28
value=.options savecurrents
.control
op
save all
echo "Wilson current mirror"
echo "Currents"
print @RControl[i] @RLoad[i]

echo "Changing RControl to 500, RLoad to 100"
alter RControl 500
alter RLoad 100
op
print @RControl[i] @RLoad[i]

echo "RControl is 50, RLoad is 10"
alter RControl 50
alter RLoad 10
op
print @RControl[i] @RLoad[i]

echo "RControl is 5000, RLoad is 100"
alter RControl 5000
alter RLoad 100
op
print @RControl[i] @RLoad[i]

.endc

}
C 57300 44600 1 0 0 npn-3.sym
{
T 58200 45100 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 57300 44600 5 10 0 1 0 0 1
model-name=genericNPN
T 57300 44600 5 10 0 0 0 0 1
model=npn
T 57800 45000 5 10 1 1 0 0 1
refdes=Q1
}
N 57900 44100 57900 44600 4
C 56100 44600 1 0 1 npn-3.sym
{
T 55200 45100 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 56100 44600 5 10 0 1 0 6 1
model-name=genericNPN
T 56100 44600 5 10 0 0 0 6 1
model=npn
T 55600 45000 5 10 1 1 0 6 1
refdes=Q2
}
N 55500 44100 55500 44600 4
C 57800 48400 1 270 0 resistor-2.sym
{
T 58150 48000 5 10 0 0 90 8 1
device=RESISTOR
T 57700 48000 5 10 1 1 180 0 1
value=0.01
T 57700 47800 5 10 1 1 180 0 1
refdes=RLoad
}
N 57900 48400 57900 48600 4
C 55400 48400 1 270 0 resistor-2.sym
{
T 55750 48000 5 10 0 0 90 8 1
device=RESISTOR
T 55300 47900 5 10 1 1 180 0 1
value=1000
T 55300 47700 5 10 1 1 180 0 1
refdes=Rcontrol
}
N 55500 48400 55500 48600 4
N 55500 47500 55500 45600 4
N 57300 45100 56100 45100 4
C 56800 48600 1 0 1 vcc-1.sym
N 57900 48600 55500 48600 4
N 57900 45900 56900 45900 4
N 56900 45900 56900 45100 4
C 56800 43800 1 0 1 gnd-1.sym
{
T 56900 43800 5 10 1 1 0 6 1
netname=0
}
N 57900 44100 55500 44100 4
C 57300 46300 1 0 0 npn-3.sym
{
T 58200 46800 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 57300 46300 5 10 0 1 0 0 1
model-name=genericNPN
T 57300 46300 5 10 0 0 0 0 1
model=npn
T 57800 46700 5 10 1 1 0 0 1
refdes=Q3
}
N 57900 45600 57900 46300 4
N 57900 47300 57900 47500 4
N 57300 46800 55500 46800 4
T 54400 49600 9 10 1 0 0 0 5
The Wilson current mirror is an improved mirror circuit
configuration designed to provide a more constant
current source or sink.
It provides a much more accurate input to output current gain.
( copied verbatim from somewhere )
