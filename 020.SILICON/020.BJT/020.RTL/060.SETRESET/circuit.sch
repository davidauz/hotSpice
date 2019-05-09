v 20130925 2
C 53600 46400 1 0 0 npn-3.sym
{
T 54500 46900 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 54500 46900 5 10 1 1 0 0 1
refdes=Q2
T 53600 46400 5 10 0 0 0 0 1
model-name=genericNpn
T 53600 46400 5 10 0 1 0 0 1
model=npn (bf=60)
}
C 54300 47700 1 90 0 resistor-2.sym
{
T 53950 48100 5 10 0 0 90 0 1
device=RESISTOR
T 54300 48000 5 10 1 1 0 0 1
value=1500
T 53800 48000 5 10 1 1 0 0 1
refdes=R2
}
C 49700 47700 1 90 0 resistor-2.sym
{
T 49350 48100 5 10 0 0 90 0 1
device=RESISTOR
T 49700 48000 5 10 1 1 0 0 1
value=1500
T 49200 48000 5 10 1 1 0 0 1
refdes=R1
}
N 49600 48600 49600 48700 4
N 54200 48800 54200 48600 4
N 49600 47700 49600 47400 4
N 54200 47700 54200 47400 4
N 49600 46400 49600 46200 4
N 54200 46200 54200 46400 4
N 50300 47500 49600 47500 4
N 52000 46900 51500 47500 4
N 52000 46900 53600 46900 4
N 50200 46900 51500 46900 4
N 51200 47500 51500 47500 4
N 52000 47500 52200 47500 4
N 52000 47500 51500 46900 4
N 53100 47500 54200 47500 4
N 54200 47500 55600 48000 4
{
T 55400 48100 5 10 1 1 0 0 1
netname=Q1
}
N 49600 47500 48100 48200 4
{
T 47800 48300 5 10 1 1 0 0 1
netname=Q2
}
C 54000 48800 1 0 0 vcc-1.sym
C 46800 47200 1 0 0 vcc-1.sym
C 46900 46000 1 0 0 gnd-1.sym
{
T 46900 46000 5 10 0 0 0 0 1
netname=0
}
C 46800 47200 1 270 0 voltage-3.sym
{
T 47500 47000 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 47300 46800 5 10 1 1 0 0 1
refdes=V1
T 47300 46600 5 10 1 1 0 0 1
value=DC 12V
}
C 54100 45900 1 0 0 gnd-1.sym
{
T 54100 45900 5 10 0 0 0 0 1
netname=0
}
C 48300 43400 1 0 0 spice-vc-switch-1.sym
{
T 49900 44100 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 48000 44800 5 10 0 1 0 0 1
model=VT=0.95 VH=0
T 49100 43300 5 12 1 1 0 0 1
refdes=S1
T 49000 43550 5 8 1 1 0 0 1
model-name=swmod
}
C 47500 44500 1 270 0 voltage-3.sym
{
T 48200 44300 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 45700 44900 5 10 0 1 0 0 1
value=pulse (0 5 0.1 0.001 0.001 0.1 0.5) DC 5
T 47500 44500 5 10 0 0 0 0 1
comment=initial value, pulsed value, delay time, rise time, fall time, pulse width,period
T 48000 44000 5 10 1 1 0 0 1
refdes=VP1
}
N 47700 44500 48500 44500 4
N 48500 44500 48500 44400 4
N 47700 43600 48500 43600 4
N 48500 43600 48500 43800 4
C 48000 42900 1 0 0 gnd-1.sym
N 48100 43200 48100 43600 4
N 50000 44400 51200 44400 4
N 50000 43800 51200 43800 4
C 54800 43400 1 0 1 spice-vc-switch-1.sym
{
T 53200 44100 5 8 0 0 0 6 1
device=SPICE-VC-switch
T 55100 44800 5 10 0 1 0 6 1
model=VT=0.95 VH=0
T 54000 43300 5 12 1 1 0 6 1
refdes=S2
T 54100 43550 5 8 1 1 0 6 1
model-name=swmod
}
N 55200 44500 54600 44500 4
N 54600 44500 54600 44400 4
N 55200 43600 54600 43600 4
N 54600 43600 54600 43800 4
C 54800 42900 1 0 0 gnd-1.sym
N 54900 43200 54900 43600 4
N 48400 44500 49200 44900 4
{
T 49100 44700 5 10 1 1 0 0 1
netname=vset
}
N 55200 44500 56200 44600 4
{
T 56200 44400 5 10 1 1 0 0 1
netname=vreset
}
C 55000 44500 1 270 0 voltage-3.sym
{
T 55700 44300 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 55000 44500 5 10 0 0 0 0 1
comment=initial value, pulsed value, delay time, rise time, fall time, pulse width,period
T 56200 44200 5 10 0 1 0 0 1
value=pulse (0 5 0.22 0.001 0.001 0.1 0.5) DC 5
T 55500 44000 5 10 1 1 0 0 1
refdes=VP2
}
C 50200 46400 1 0 1 npn-3.sym
{
T 49300 46900 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 49300 46900 5 10 1 1 0 6 1
refdes=Q1
T 50200 46400 5 10 0 0 0 6 1
model-name=genericNpn
T 50200 46400 5 10 0 1 0 6 1
model=npn (bf=60)
}
C 51200 47600 1 180 0 resistor-2.sym
{
T 50800 47250 5 10 0 0 180 0 1
device=RESISTOR
T 50900 47700 5 10 1 1 0 0 1
value=10k
T 50400 47700 5 10 1 1 0 0 1
refdes=R3
}
C 53100 47600 1 180 0 resistor-2.sym
{
T 52700 47250 5 10 0 0 180 0 1
device=RESISTOR
T 52800 47700 5 10 1 1 0 0 1
value=10k
T 52300 47700 5 10 1 1 0 0 1
refdes=R4
}
N 53100 43800 52500 43800 4
C 49500 45900 1 0 0 gnd-1.sym
{
T 49500 45900 5 10 0 0 0 0 1
netname=0
}
C 49400 48700 1 0 0 vcc-1.sym
N 51200 44400 51200 46900 4
N 53100 44400 52500 44400 4
N 52500 44400 52500 46900 4
C 51100 43500 1 0 0 gnd-1.sym
C 52400 43500 1 0 0 gnd-1.sym
C 56400 47300 1 0 0 spice-directive-1.sym
{
T 56500 47600 5 10 0 1 0 0 1
device=directive
T 56500 47700 5 10 1 1 0 0 1
refdes=A1
T 56400 45600 5 10 1 1 0 0 10
value=.control
tran 1ms 1s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Set-Reset"
plot vset vreset q1+6 q2+12
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 47700 49800 9 10 1 0 0 0 2
This clever little circuit is a "Set-Reset flip-flop", also called "SR latch" or "Bistable oscillator".
It has two stable states, switching from one to another according to the impulses coming through its two inputs. 
T 45400 43600 9 10 1 0 0 0 2
This voltage source fires 
impulses to the "SET" input
T 55300 43300 9 10 1 0 0 0 2
This voltage source takes 
care of the "RESET" input
