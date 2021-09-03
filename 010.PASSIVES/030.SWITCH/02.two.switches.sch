v 20130925 2
C 61000 46400 1 0 0 spice-vc-switch-1.sym
{
T 62600 47100 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 61700 46550 5 8 0 1 0 0 1
model-name=swm1
T 60700 47800 5 10 0 1 0 0 1
model=VT=0.95 VH=0 ron=1e-12 roff=1e12
T 61000 46400 5 10 0 0 0 0 1
value=off
T 61900 47600 5 12 1 1 0 0 1
refdes=S1
}
C 60200 47500 1 270 0 voltage-3.sym
{
T 60900 47300 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 60200 47500 5 10 0 0 0 0 1
value=pulse (0 5 0.1 0.001 0.001 0.1 0.5) DC 5
T 60200 47500 5 10 0 0 0 0 1
comment=initial v, pulsed v, delay t, rise t, fall t, pulse width,period
T 60700 47000 5 10 1 1 0 0 1
refdes=Vp1
}
N 60400 47500 61200 47500 4
N 61200 47400 61200 47500 4
N 60400 46600 61200 46600 4
N 61200 46600 61200 46800 4
N 62900 47400 62900 48700 4
N 62900 46100 62900 46800 4
C 60700 45900 1 0 0 gnd-1.sym
N 60800 46200 60800 46600 4
C 62100 44600 1 0 0 gnd-1.sym
C 59300 47100 1 270 0 voltage-3.sym
{
T 60000 46900 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 59200 46900 5 10 1 1 0 0 1
refdes=V2
T 59200 46200 5 10 1 1 0 0 1
value=DC 10V
}
N 59500 47100 59500 48700 4
N 59500 46200 59500 44900 4
N 62700 46800 62900 46800 4
N 62900 44900 62900 45200 4
N 62700 47400 62900 47400 4
N 60700 47500 60800 48000 4
{
T 60700 48100 5 10 1 1 0 0 1
netname=v1p
}
C 54200 49100 1 0 0 spice-directive-1.sym
{
T 54300 49400 5 10 0 1 0 0 1
device=directive
T 54300 49500 5 10 1 1 0 0 1
refdes=A1
T 54200 46900 5 10 1 1 0 0 11
value=.options savecurrents
.control
save all @s1[i] @r1[i]
tran 1ms 1s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot v1o v2o
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
C 62800 46100 1 270 0 resistor-2.sym
{
T 62400 45600 5 10 1 1 0 0 1
value=100
T 63150 45700 5 10 0 0 270 0 1
device=RESISTOR
T 63100 45600 5 10 1 1 0 0 1
refdes=R1
}
C 64400 46400 1 0 0 spice-vc-switch-1.sym
{
T 66000 47100 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 65100 46550 5 8 0 1 0 0 1
model-name=swm1
T 64400 46400 5 10 0 0 0 0 1
value=off
T 65300 47600 5 12 1 1 0 0 1
refdes=S2
}
C 63600 47500 1 270 0 voltage-3.sym
{
T 64300 47300 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 63600 47500 5 10 0 0 0 0 1
value=pulse (0 5 0.15 0.001 0.001 0.1 0.5) DC 5
T 63600 47500 5 10 0 0 0 0 1
comment=initial v, pulsed v, delay t, rise t, fall t, pulse width,period
T 64100 47000 5 10 1 1 0 0 1
refdes=Vp2
}
N 63800 47500 64600 47500 4
N 64600 47500 64600 47400 4
N 63800 46600 64600 46600 4
N 64600 46600 64600 46800 4
N 66300 47400 66300 48700 4
N 66300 46100 66300 46800 4
C 64100 45900 1 0 0 gnd-1.sym
N 64200 46200 64200 46600 4
N 66100 46800 66300 46800 4
C 66200 46100 1 270 0 resistor-2.sym
{
T 66550 45700 5 10 0 0 270 0 1
device=RESISTOR
T 66500 45600 5 10 1 1 0 0 1
refdes=R2
T 65800 45600 5 10 1 1 0 0 1
value=150
}
N 66100 47400 66300 47400 4
N 66300 45200 66300 44900 4
N 62900 46800 63100 47200 4
{
T 63100 47300 5 10 1 1 0 0 1
netname=v1o
}
N 64200 47500 64300 48000 4
{
T 64200 48100 5 10 1 1 0 0 1
netname=v2p
}
N 66300 46800 66500 47200 4
{
T 66500 47300 5 10 1 1 0 0 1
netname=v2o
}
N 59500 48700 66300 48700 4
N 59500 44900 66300 44900 4
T 59200 49400 9 10 1 0 0 0 5
Here are two switches with the same model name and different REFDES.

Note that while S1 has an attribute "MODEL" with the model parameters,
S2 has only model-name but no parameters.
The resulting netlist has one model and two switches sharing it as true good friends do.
T 54200 50100 9 20 1 0 0 0 1
Two ngspice SWITCHes
T 54900 43800 9 10 1 0 0 0 4
This SPICE directive plots the voltage at branches v1o and v2o.
Those voltages go up and down according to the configuration of the switch elements.
ngspice switches are kinda programmable, you'll have to look
at the docs to understand how it works.
