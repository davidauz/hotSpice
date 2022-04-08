v 20201211 2
C 59900 49600 1 0 0 vcc-1.sym
T 56800 52300 9 20 1 0 0 0 1
Push Pull
C 55400 47900 1 0 0 npn-3.sym
{
T 56300 48400 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 55400 47900 5 10 0 0 0 0 1
model-name=genericNPN
T 56300 48400 5 10 1 1 0 0 1
refdes=Q1
T 55400 47900 5 10 0 0 0 0 1
model=npn
}
N 56000 48900 56000 49400 4
N 56000 46000 56000 46500 4
C 55800 49400 1 0 0 vcc-1.sym
N 53100 47800 54200 47800 4
{
T 53200 47950 5 10 1 1 0 0 1
netname=Vin
}
C 57800 46800 1 270 0 resistor-2.sym
{
T 58150 46400 5 10 0 0 270 0 1
device=RESISTOR
T 57400 46300 5 10 1 1 0 0 1
value=1k
T 58100 46300 5 10 1 1 0 0 1
refdes=RL1
T 58100 46100 5 10 1 1 0 0 1
comment=LOAD resistor
}
N 56000 47700 57900 47700 4
N 57900 47700 57900 46800 4
N 57900 45900 57900 45300 4
N 57900 47700 58600 48200 4
{
T 58700 48200 5 10 1 1 0 0 1
netname=Vout
}
C 52700 51400 1 0 0 spice-directive-1.sym
{
T 52800 51700 5 10 0 1 0 0 1
device=directive
T 52800 51800 5 10 1 1 0 0 1
refdes=A2
T 52700 49100 5 10 1 1 0 0 12
value=.options savecurrents
.control
save all @q1[ib] @q1[ie]
tran 0.5ms 0.08s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Voltages"
plot vin vout
set curplottitle="Currents"
plot   @q1[ib]   -@q2[ib]   @rl1[i]
.endc

}
C 55400 47500 1 180 1 pnp-3.sym
{
T 56300 47000 5 10 0 0 180 6 1
device=PNP_TRANSISTOR
T 55900 47100 5 10 1 1 180 6 1
refdes=Q2
T 55400 47500 5 10 0 0 180 6 1
model-name=genericPNP
T 55400 47500 5 10 0 0 180 6 1
model=pnp
}
N 55400 47000 55400 48400 4
{
T 55350 47100 5 10 0 0 90 0 1
netname=Vin
}
N 56000 47500 56000 47900 4
N 60100 47900 61300 47900 4
C 61200 47600 1 0 0 gnd-1.sym
{
T 61100 47600 5 10 1 1 0 0 1
netname=0
}
N 60100 49100 60100 49600 4
C 59900 49100 1 270 0 voltage-3.sym
{
T 60600 48900 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 60400 48700 5 10 1 1 0 0 1
refdes=V1
T 60400 48500 5 10 1 1 0 0 1
value=DC 10V
}
C 60300 46000 1 180 0 vee-1.sym
{
T 60300 46000 5 10 0 0 0 0 1
netname=vee
}
C 56200 46000 1 180 0 vee-1.sym
{
T 56200 46000 5 10 0 0 0 0 1
netname=vee
}
C 57800 45000 1 0 0 gnd-1.sym
{
T 57800 45000 5 10 0 0 0 0 1
netname=0
}
C 63100 47400 1 270 0 voltage-3.sym
{
T 63800 47200 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 63100 47400 5 10 0 0 0 0 1
value=0 SIN (0 2 50  0 0 0) 
T 63100 47400 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 62000 46900 5 10 1 1 0 0 1
refdes=VSIGNAL
}
N 63300 47400 63300 48100 4
N 63300 46500 63300 46300 4
C 63200 46000 1 0 0 gnd-1.sym
{
T 63200 46000 5 10 0 0 0 0 1
netname=0
}
C 59900 47400 1 270 0 voltage-3.sym
{
T 60600 47200 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 60400 47000 5 10 1 1 0 0 1
refdes=V2
T 60400 46800 5 10 1 1 0 0 1
value=DC 10V
}
N 60100 46500 60100 46000 4
N 60100 47400 60100 48200 4
N 62900 48900 63300 48100 4
{
T 63100 48750 5 10 1 1 0 0 1
netname=Vin
}
T 55900 50700 9 10 1 0 0 0 6
The input voltage has to be higher than the diode drop 
or the BJT won't even start conducting.
The output voltage is actually lower than the input voltage but
the current is amplified a lot.
Also, it does not conduct when there is no signal so it is more efficient than
the class A amplifier.
C 54200 47700 1 0 0 resistor-2.sym
{
T 54600 48050 5 10 0 0 0 0 1
device=RESISTOR
T 54300 47500 5 10 1 1 0 0 1
value=1
T 54300 48000 5 10 1 1 0 0 1
refdes=R0
}
N 55100 47800 55400 47800 4
