v 20130925 2
C 36700 52200 1 270 0 voltage-3.sym
{
T 37400 52000 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 37200 51800 5 10 1 1 0 0 1
refdes=V1
T 37200 51600 5 10 1 1 0 0 1
value=DC 10V
}
C 38200 52800 1 270 0 resistor-2.sym
{
T 38550 52400 5 10 0 0 270 0 1
device=RESISTOR
T 38800 52200 5 10 1 1 180 0 1
refdes=R2
T 38900 52400 5 10 1 1 180 0 1
value=1000
}
C 38200 51400 1 270 0 resistor-2.sym
{
T 38550 51000 5 10 0 0 270 0 1
device=RESISTOR
T 38800 50800 5 10 1 1 180 0 1
refdes=R4
T 38900 51000 5 10 1 1 180 0 1
value=1000
}
N 38300 51900 38300 51400 4
N 38300 51700 39500 51700 4
C 39400 51400 1 0 0 gnd-1.sym
{
T 39300 51400 5 10 1 1 0 0 1
netname=0
}
N 36900 52200 36900 53500 4
N 38300 53500 38300 52800 4
N 36900 51300 36900 49900 4
N 36900 49900 38300 49900 4
N 38300 49900 38300 50500 4
N 36900 53500 38300 53500 4
N 37500 53500 37900 53900 4
{
T 38000 53800 5 10 1 1 0 0 1
netname=vcc
}
N 37400 49900 37700 49700 4
{
T 37600 49400 5 10 1 1 0 0 1
netname=vee
}
T 30500 52800 9 10 1 0 0 0 4
It is possible to obtain a negative voltage from a single voltage source
by setting up a voltage divider and placing the ground in the middle.

Just be careful with the currents.
C 31400 51400 1 0 0 spice-directive-1.sym
{
T 31500 51700 5 10 0 1 0 0 1
device=directive
T 31500 51800 5 10 1 1 0 0 1
refdes=A1
T 31400 50300 5 10 1 1 0 0 7
value=.control
op
print vcc vee
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 34100 55100 9 20 1 0 0 0 1
Negative voltage
