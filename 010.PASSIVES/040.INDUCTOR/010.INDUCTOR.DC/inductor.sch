v 20130925 2
C 45500 67600 1 270 0 voltage-3.sym
{
T 46200 67400 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 45500 67600 5 10 0 0 0 0 1
value=pulse (0 1 0.001 0.0001 0.0001 0.01 5) DC 5
T 45500 67600 5 10 0 0 0 0 1
comment=initial v, pulsed v, delay t, rise t, fall t, pulse width,period
T 44700 67100 5 10 1 1 0 0 1
refdes=VPULSE
}
C 45600 64700 1 0 0 gnd-1.sym
{
T 45600 64700 5 10 0 0 0 0 1
netname=0
}
N 45700 67600 45700 68700 4
N 45700 66700 45700 65000 4
C 47100 68800 1 180 0 resistor-2.sym
{
T 46700 68900 5 10 1 1 0 0 1
refdes=R2
T 46900 68600 5 10 1 1 180 0 1
value=100
}
N 45700 68700 46200 68700 4
N 47600 68700 47900 69100 4
{
T 47700 69200 5 10 1 1 0 0 1
netname=vOut
}
N 47100 68700 47600 68700 4
N 47600 65000 45700 65000 4
C 47500 67500 1 270 0 inductor-1.sym
{
T 48000 67300 5 10 0 0 270 0 1
device=INDUCTOR
T 47400 66900 5 10 1 1 180 0 1
refdes=L1
T 48200 67300 5 10 0 0 270 0 1
symversion=0.1
T 47800 67000 5 10 1 1 0 0 1
value=0.1H
}
N 47600 67500 47600 68700 4
N 47600 66600 47600 65000 4
N 45700 68700 45400 69100 4
{
T 44900 69200 5 10 1 1 0 0 1
netname=vIn
}
T 49300 68400 9 10 1 0 0 0 10
Contrary to the capacitor, the inductor starts
with a high resistance to current.  Think of it
as a heavy rotor that has to start spinning.
The current flowing through it builds up a magnetic
field, where the the energy is stored.
When it is all charged up, the inductor behaves like
an open circuit.
When the pulse ends, the energy accumulated in the 
magnetic is released generating a current that flows 
back.
C 49400 67500 1 0 0 spice-directive-1.sym
{
T 49500 67800 5 10 0 1 0 0 1
device=directive
T 49500 67900 5 10 1 1 0 0 1
refdes=A1
T 49400 64900 5 10 1 1 0 0 14
value=.options savecurrents
.control
save all @l1[i]
tran 0.01ms 20ms
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Current"
plot @l1[i]
set curplottitle="Voltage"
plot vin vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 45400 70200 9 15 1 0 0 0 1
The Inductor
