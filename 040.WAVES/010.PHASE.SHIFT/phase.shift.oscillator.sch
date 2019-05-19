v 20130925 2
C 46700 68800 1 180 0 resistor-2.sym
{
T 46300 68900 5 10 1 1 0 0 1
refdes=R1
T 46500 68600 5 10 1 1 180 0 1
value=500
}
N 47200 68700 47500 69100 4
{
T 47300 69200 5 10 1 1 0 0 1
netname=vO1
}
N 46700 68700 47700 68700 4
N 42900 65600 51100 65600 4
C 47400 66700 1 90 0 capacitor-1.sym
{
T 46900 67200 5 10 1 1 180 0 1
refdes=C1
T 47000 67000 5 10 1 1 180 0 1
value=10uf
}
N 47200 66700 47200 65600 4
N 47200 67600 47200 68700 4
C 48600 68800 1 180 0 resistor-2.sym
{
T 48200 68900 5 10 1 1 0 0 1
refdes=R2
T 48400 68600 5 10 1 1 180 0 1
value=500
}
N 49100 68700 49400 69100 4
{
T 49200 69200 5 10 1 1 0 0 1
netname=vO2
}
N 48600 68700 49700 68700 4
C 49300 66700 1 90 0 capacitor-1.sym
{
T 48800 67200 5 10 1 1 180 0 1
refdes=C2
T 48900 67000 5 10 1 1 180 0 1
value=10uf
}
N 49100 66700 49100 65600 4
N 49100 67600 49100 68700 4
C 50600 68800 1 180 0 resistor-2.sym
{
T 50200 68900 5 10 1 1 0 0 1
refdes=R3
T 50400 68600 5 10 1 1 180 0 1
value=500
}
N 50600 68700 52000 68700 4
C 51300 66700 1 90 0 capacitor-1.sym
{
T 50800 67200 5 10 1 1 180 0 1
refdes=C3
T 50900 67000 5 10 1 1 180 0 1
value=10uf
}
N 51100 66700 51100 65600 4
C 44600 66700 1 0 0 npn-3.sym
{
T 45100 67200 5 10 1 1 0 0 1
refdes=Q1
T 45500 67200 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 44600 66700 5 10 0 0 0 0 1
model-name=genericNPN
T 44600 66700 5 10 0 1 0 0 1
model=npn
}
C 42500 69400 1 0 0 gnd-1.sym
{
T 42500 69400 5 10 0 0 0 0 1
netname=0
}
C 42400 70600 1 270 0 voltage-3.sym
{
T 43100 70400 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 42900 70200 5 10 1 1 0 0 1
refdes=V1
T 42900 70000 5 10 1 1 0 0 1
value=DC 5V
}
C 42400 70600 1 0 0 vcc-1.sym
{
T 42400 70600 5 10 0 0 0 0 1
netname=vcc
}
C 47100 65300 1 0 0 gnd-1.sym
{
T 47100 65300 5 10 0 0 0 0 1
netname=0
}
N 42900 67200 44600 67200 4
N 45200 67700 45200 70200 4
N 45200 66700 45200 65600 4
C 41200 66200 1 0 0 spice-vc-switch-1.sym
{
T 42800 66900 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 41900 66350 5 8 0 1 0 0 1
model-name=swmod
T 40900 67600 5 10 0 1 0 0 1
model=VT=0.95 VH=0 ron=1e-12 roff=1e12
T 41200 66200 5 10 0 0 0 0 1
value=off
T 42000 66300 5 12 1 1 0 0 1
refdes=S1
}
C 40400 67300 1 270 0 voltage-3.sym
{
T 41100 67100 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 38900 65800 5 10 0 1 0 0 1
value=pulse (0 1 0.01 0.001 0.001 0.001 5) DC 5
T 40400 67300 5 10 0 0 0 0 1
comment=initial v, pulsed v, delay t, rise t, fall t, pulse width,period
T 40100 66800 5 10 1 1 0 0 1
refdes=VPulse
}
N 40600 67300 41400 67300 4
N 41400 67300 41400 67200 4
N 40600 66400 41400 66400 4
N 41400 66400 41400 66600 4
N 40700 67300 40400 67700 4
{
T 39700 67700 5 10 1 1 0 0 1
netname=Vp
}
C 40900 66100 1 0 0 gnd-1.sym
{
T 40900 66100 5 10 0 0 0 0 1
netname=0
}
N 42900 65600 42900 66600 4
N 45800 68700 45200 68700 4
C 45000 71400 1 0 0 vcc-1.sym
{
T 45000 71400 5 10 0 0 0 0 1
netname=vcc
}
C 45100 71100 1 270 0 resistor-2.sym
{
T 45450 70700 5 10 0 0 270 0 1
device=RESISTOR
T 45800 70700 5 10 1 1 180 0 1
value=1k
T 45100 70600 5 10 1 1 180 0 1
refdes=RL
}
N 45200 71100 45200 71400 4
T 36700 69300 9 10 1 0 0 0 5
In a real circuit the oscillation would start by itself
due to imperfections and transients in the components.
But since the components in SPICE are ideal, this switch
is there to provide an initial impulse.

B 39300 65300 4000 3000 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
L 38400 69400 39300 68400 3 0 0 0 -1 -1
L 39300 68500 39300 68400 3 0 0 0 -1 -1
L 39200 68400 39300 68400 3 0 0 0 -1 -1
C 54200 69000 1 90 0 resistor-2.sym
{
T 53850 69400 5 10 0 0 90 0 1
device=RESISTOR
T 54300 69300 5 10 1 1 0 0 1
value=22k
T 54300 69500 5 10 1 1 0 0 1
refdes=R5
T 54300 69100 5 10 1 1 0 0 1
comment=LOAD resistor
}
N 49100 69900 45200 69900 4
N 50000 69900 54100 69900 4
N 54100 69000 54100 68800 4
C 54000 68500 1 0 0 gnd-1.sym
{
T 54000 68500 5 10 0 0 0 0 1
netname=0
}
C 50000 70100 1 180 0 capacitor-1.sym
{
T 49700 70300 5 10 1 1 180 0 1
refdes=C5
T 49700 69600 5 10 1 1 180 0 1
value=1m
}
N 51100 68700 51100 67600 4
N 52000 68700 52000 64500 4
N 52000 64500 44200 64500 4
N 44200 64500 44200 67200 4
T 47000 64500 9 10 1 0 0 0 1
This is the feedback line
N 52000 68700 52200 69300 4
{
T 52100 69400 5 10 1 1 0 0 1
netname=vO3
}
N 53300 69900 53500 70500 4
{
T 53400 70600 5 10 1 1 0 0 1
netname=vOut
}
T 46500 71900 9 10 1 0 0 0 2
The phase shift is feed back to a transistor,
generating a handsome sine wave.
C 54000 66100 1 0 0 spice-directive-1.sym
{
T 54100 66400 5 10 0 1 0 0 1
device=directive
T 54100 66500 5 10 1 1 0 0 1
refdes=A1
T 54000 64500 5 10 1 1 0 0 6
value=.control
set color0=rgb:f/f/f
set color1=rgb:0/0/0
tran 0.5ms 0.5s
plot vo1 vo2 vo3
.endc
}