v 20130925 2
C 30000 69500 1 0 0 vcc-1.sym
C 30100 68300 1 0 0 gnd-1.sym
{
T 30100 68300 5 10 0 0 0 0 1
netname=0
}
C 30000 69500 1 270 0 voltage-3.sym
{
T 30700 69300 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 30500 69100 5 10 1 1 0 0 1
refdes=V1
T 30500 68900 5 10 0 1 0 0 1
value=0 SIN (0 220 50  0 0 0) 
T 30000 69500 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
}
C 31800 69900 1 0 0 vcc-1.sym
C 27000 69900 1 0 0 spice-directive-1.sym
{
T 27100 70200 5 10 0 1 0 0 1
device=directive
T 27100 70300 5 10 1 1 0 0 1
refdes=A2
T 27000 68600 5 10 1 1 0 0 8
value=.options savecurrents
.control
save all
tran 0.005ms 0.2s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot     @rload[i]    @r.x1.rlat[i]  
.endc
}
C 31900 66600 1 0 0 gnd-1.sym
{
T 31900 66600 5 10 0 0 0 0 1
netname=0
}
C 31900 69400 1 270 0 resistor-2.sym
{
T 32250 69000 5 10 0 0 270 0 1
device=RESISTOR
T 32500 69000 5 10 1 1 180 0 1
value=10
T 32900 69300 5 10 1 1 180 0 1
refdes=RLOAD
}
N 32000 69400 32000 69900 4
T 28000 70600 9 10 1 0 0 0 4
Here is a classic application of a SCR, where a PULSE signal controls
the flow of a sinusoidal current.
The latter gets nicely cut according to the pulses.

C 31500 67400 1 0 0 scr.sym
{
T 32100 67700 5 10 1 1 0 0 1
refdes=X1
T 33014 68188 5 10 1 1 180 0 1
device=EC103D1
T 31500 67400 5 10 0 0 0 0 1
model-name=EC103D1
T 31500 67400 5 10 0 0 0 0 1
file=SCR.subckt.cir
}
C 30500 67500 1 270 0 voltage-3.sym
{
T 31200 67300 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 30500 67500 5 10 0 0 0 0 1
comment=initial V, pulsed V, delay t, rise t, fall t, pulse width,period
T 28100 67100 5 10 0 1 0 0 1
value=PULSE(0 15 45m 0.001 0.001 0.001 0.017)
T 29400 66800 5 10 1 1 0 0 1
refdes=VSIGNAL
}
C 30600 66200 1 0 0 gnd-1.sym
{
T 30600 66200 5 10 0 0 0 0 1
netname=0
}
N 32000 66900 32000 67500 4
N 30700 66600 30700 66500 4
N 30700 67500 31800 67500 4
