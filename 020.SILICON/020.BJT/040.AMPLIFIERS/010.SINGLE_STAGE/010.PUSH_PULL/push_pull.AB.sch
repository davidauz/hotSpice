v 20201211 2
C 60900 49900 1 0 0 vcc-1.sym
T 52800 53400 9 20 1 0 0 0 1
Push Pull+diodes: Class AB
C 55400 48500 1 0 0 npn-3.sym
{
T 56300 49000 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 55400 48500 5 10 0 0 0 0 1
model-name=genericNPN
T 55900 49000 5 10 1 1 0 0 1
refdes=Q1
T 55400 48500 5 10 0 0 0 0 1
model=npn
}
N 56000 49500 56000 50900 4
N 56000 44700 56000 46300 4
C 55800 50900 1 0 0 vcc-1.sym
N 51300 47900 52000 47900 4
{
T 51400 48050 5 10 1 1 0 0 1
netname=Vin
}
C 57700 47000 1 270 0 resistor-2.sym
{
T 58050 46600 5 10 0 0 270 0 1
device=RESISTOR
T 58000 46700 5 10 1 1 0 0 1
value=1k
T 58000 46500 5 10 1 1 0 0 1
refdes=RL1
T 58000 46300 5 10 1 1 0 0 1
comment=Load
}
N 56000 47900 57800 47900 4
N 57800 47900 57800 47000 4
N 57800 46100 57800 45500 4
N 57800 47900 58500 48400 4
{
T 58600 48400 5 10 1 1 0 0 1
netname=Vout
}
C 50500 51900 1 0 0 spice-directive-1.sym
{
T 50600 52200 5 10 0 1 0 0 1
device=directive
T 50600 52300 5 10 1 1 0 0 1
refdes=A2
T 50500 49400 5 10 1 1 0 0 13
value=.options savecurrents
.control
save all @q1[ib] @q1[ie]
tran 0.5ms 0.08s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Voltages"
plot vin vout
set curplottitle="Currents"
plot @r0[i] @rl1[i] 
plot vin vout
.endc

}
C 55400 47300 1 180 1 pnp-3.sym
{
T 56300 46800 5 10 0 0 180 6 1
device=PNP_TRANSISTOR
T 55900 46900 5 10 1 1 180 6 1
refdes=Q2
T 55400 47300 5 10 0 0 180 6 1
model-name=genericPNP
T 55400 47300 5 10 0 0 180 6 1
model=pnp
}
N 56000 47300 56000 48500 4
N 61100 48200 62300 48200 4
C 62200 47900 1 0 0 gnd-1.sym
{
T 62100 47900 5 10 1 1 0 0 1
netname=0
}
N 61100 49400 61100 49900 4
C 60900 49400 1 270 0 voltage-3.sym
{
T 61600 49200 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 61400 49000 5 10 1 1 0 0 1
refdes=V1
T 61400 48800 5 10 1 1 0 0 1
value=DC 10V
}
C 61300 46300 1 180 0 vee-1.sym
{
T 61300 46300 5 10 0 0 0 0 1
netname=vee
}
C 57700 45200 1 0 0 gnd-1.sym
{
T 57700 45200 5 10 0 0 0 0 1
netname=0
}
C 64100 47700 1 270 0 voltage-3.sym
{
T 64800 47500 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 64100 47700 5 10 0 0 0 0 1
value=0 SIN (0 0.1 50  0 0 0) 
T 64100 47700 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 63000 47200 5 10 1 1 0 0 1
refdes=VSIGNAL
T 63100 47000 5 10 1 1 0 0 1
comment=0 / 0.1 V
}
N 64300 47700 64300 48400 4
N 64300 46800 64300 46600 4
C 64200 46300 1 0 0 gnd-1.sym
{
T 64200 46300 5 10 0 0 0 0 1
netname=0
}
C 60900 47700 1 270 0 voltage-3.sym
{
T 61600 47500 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 61400 47300 5 10 1 1 0 0 1
refdes=V2
T 61400 47100 5 10 1 1 0 0 1
value=DC 10V
}
N 61100 46800 61100 46300 4
N 61100 47700 61100 48500 4
N 63900 49200 64300 48400 4
{
T 64100 49050 5 10 1 1 0 0 1
netname=Vin
}
T 53600 51800 9 10 1 0 0 0 4
Adding two diodes we have the transistor bases
biased even when there is no signal.
The output waveforms are much better, and the
circuit is responsive to a small signal.
C 52000 47800 1 0 0 resistor-2.sym
{
T 52400 48150 5 10 0 0 0 0 1
device=RESISTOR
T 52100 47600 5 10 1 1 0 0 1
value=1
T 52100 48100 5 10 1 1 0 0 1
refdes=R0
}
C 53900 48800 1 270 0 diode-1.sym
{
T 54500 48400 5 10 0 0 270 0 1
device=DIODE
T 54300 48400 5 10 1 1 0 0 1
refdes=D1
T 53900 48800 5 10 0 0 180 0 1
model-name=D
T 53900 48800 5 10 0 0 0 0 1
model=default
T 53900 48800 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
C 54000 50500 1 270 0 resistor-2.sym
{
T 54350 50100 5 10 0 0 270 0 1
device=RESISTOR
T 54300 50200 5 10 1 1 0 0 1
value=500
T 54300 50000 5 10 1 1 0 0 1
refdes=RQ1
}
C 53900 47900 1 270 0 diode-1.sym
{
T 54500 47500 5 10 0 0 270 0 1
device=DIODE
T 54300 47500 5 10 1 1 0 0 1
refdes=D2
T 53900 47900 5 10 0 0 180 0 1
model-name=D
T 53900 47900 5 10 0 0 0 0 1
model=default
T 53900 47900 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
C 54000 46200 1 270 0 resistor-2.sym
{
T 54350 45800 5 10 0 0 270 0 1
device=RESISTOR
T 54300 45900 5 10 1 1 0 0 1
value=500
T 54300 45700 5 10 1 1 0 0 1
refdes=RQ2
}
N 54100 50500 54100 50700 4
N 54100 50700 56000 50700 4
N 54100 45300 54100 45000 4
N 54100 45000 56000 45000 4
N 54100 48800 54100 49600 4
C 56200 44700 1 180 0 vee-1.sym
{
T 56200 44700 5 10 0 0 0 0 1
netname=vee
}
N 52900 47900 54100 47900 4
N 54100 49000 53600 49500 4
{
T 53400 49600 5 10 1 1 0 0 1
netname=Vbq1
}
N 54100 46200 54100 47000 4
N 55400 49000 54100 49000 4
N 55400 46800 54100 46800 4
