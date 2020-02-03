v 20130925 2
C 50100 62800 1 270 0 resistor-2.sym
{
T 50450 62400 5 10 0 0 270 0 1
device=RESISTOR
T 50400 62300 5 10 1 1 0 0 1
value=1200
T 50400 62500 5 10 1 1 0 0 1
refdes=Rca
}
N 50200 61000 50200 61900 4
N 50200 62800 50200 62900 4
C 50000 62900 1 0 0 vcc-1.sym
{
T 50100 63300 5 10 0 1 0 0 1
netname=vcc
}
N 48600 60500 49600 60500 4
C 49600 60000 1 0 0 npn-3.sym
{
T 50500 60500 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 49600 60000 5 10 0 1 0 0 1
model-name=genericNPN
T 49600 60000 5 10 0 0 0 0 1
model=npn
T 50100 60400 5 10 1 1 0 0 1
refdes=Q1a
}
B 46300 56700 8800 8300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 50400 58600 1 180 0 vee-1.sym
{
T 50400 58600 5 10 0 0 0 0 1
netname=vee
}
T 46400 63900 9 10 1 0 0 0 5
A common emitter with Vcc and Vee.
To see the pretty picture:

plot vp voa

C 40900 61100 1 270 0 voltage-3.sym
{
T 41600 60900 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 40100 60700 5 10 1 1 0 0 1
refdes=V1
T 40100 60500 5 10 1 1 0 0 1
value=DC 15V
}
N 41100 60200 43400 60200 4
C 42200 58800 1 0 0 gnd-1.sym
{
T 42100 58800 5 10 1 1 0 0 1
netname=0
}
C 40900 61100 1 0 0 vcc-1.sym
{
T 41000 61500 5 10 0 1 0 0 1
netname=vcc
}
C 40900 60200 1 270 0 voltage-3.sym
{
T 41600 60000 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 40100 59800 5 10 1 1 0 0 1
refdes=V2
T 40100 59600 5 10 1 1 0 0 1
value=DC 15V
}
C 41300 59300 1 180 0 vee-1.sym
{
T 41300 59300 5 10 0 0 0 0 1
netname=vee
}
C 43200 61200 1 270 0 voltage-3.sym
{
T 43900 61000 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 43200 61200 5 10 0 0 0 0 1
value=0 SIN (0 0.01 1khz  0 0 0) 
T 43200 61200 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 43700 60700 5 10 1 1 0 0 1
refdes=VSu
}
C 43200 60100 1 270 0 voltage-3.sym
{
T 43900 59900 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 43200 60100 5 10 0 0 0 0 1
value=0 SIN (0 0.0015 50  0 0 0) 
T 43200 60100 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 43700 59500 5 10 1 1 0 0 1
refdes=VSd
}
N 43400 60100 43400 60300 4
N 48600 60500 48900 60800 4
{
T 49000 60800 5 10 1 1 0 0 1
netname=Vp
}
C 50100 59500 1 270 0 resistor-2.sym
{
T 50450 59100 5 10 0 0 270 0 1
device=RESISTOR
T 50400 58900 5 10 1 1 0 0 1
value=5k
T 50400 59100 5 10 1 1 0 0 1
refdes=REa
}
N 50200 59500 50200 60000 4
N 50200 59700 50800 59900 4
{
T 50800 59900 5 10 1 1 0 0 1
netname=Vea
}
C 50600 61300 1 0 0 capacitor-1.sym
{
T 50800 62000 5 10 0 0 0 0 1
device=CAPACITOR
T 50800 62200 5 10 0 0 0 0 1
symversion=0.1
T 50900 61800 5 10 1 1 0 0 1
refdes=C1a
T 50900 61100 5 10 1 1 0 0 1
value=1m
}
N 51900 61500 52500 61700 4
{
T 52500 61700 5 10 1 1 0 0 1
netname=Voa
}
C 51800 61000 1 270 0 resistor-2.sym
{
T 52150 60600 5 10 0 0 270 0 1
device=RESISTOR
T 52100 60300 5 10 1 1 0 0 1
value=5k
T 52100 60500 5 10 1 1 0 0 1
refdes=RLa
}
N 51900 61000 51900 61500 4
N 51900 61500 51500 61500 4
C 51800 59800 1 0 0 gnd-1.sym
{
T 51700 59800 5 10 1 1 0 0 1
netname=0
}
N 50600 61500 50200 61500 4
C 59200 62100 1 270 0 resistor-2.sym
{
T 59550 61700 5 10 0 0 270 0 1
device=RESISTOR
T 59500 61600 5 10 1 1 0 0 1
value=1200
T 59500 61800 5 10 1 1 0 0 1
refdes=Rc1b
}
N 59300 60300 59300 61200 4
N 59300 62100 59300 62600 4
N 57700 59800 58700 59800 4
C 58700 59300 1 0 0 npn-3.sym
{
T 59600 59800 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 58700 59300 5 10 0 1 0 0 1
model-name=genericNPN
T 58700 59300 5 10 0 0 0 0 1
model=npn
T 59200 59700 5 10 1 1 0 0 1
refdes=Q1b
}
B 55700 56700 8800 8300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
N 57700 59800 58000 60100 4
{
T 58100 60100 5 10 1 1 0 0 1
netname=Vp
}
N 59300 58500 59300 59300 4
T 55900 61600 9 10 1 0 0 0 17
Two common emitters conjoined make a basic differential amplifier.
Check out the improved gain:

plot vp vob

Then you can modify the SPICE parameters to see the current flowing through rc1b:

.options savecurrents
.control
save all @rc1b[i] 
tran 0.5ms 0.08s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot @rc1b[i] 
.endc

The resulting current is about 420 ua.
N 63300 60800 63900 61000 4
{
T 63900 61000 5 10 1 1 0 0 1
netname=Vob
}
C 63200 60300 1 270 0 resistor-2.sym
{
T 63550 59900 5 10 0 0 270 0 1
device=RESISTOR
T 63500 59600 5 10 1 1 0 0 1
value=5k
T 63500 59800 5 10 1 1 0 0 1
refdes=RLb
}
N 63300 60300 63300 60800 4
N 63300 60800 62900 60800 4
C 63200 59100 1 0 0 gnd-1.sym
{
T 63100 59100 5 10 1 1 0 0 1
netname=0
}
C 62000 60600 1 0 0 capacitor-1.sym
{
T 62300 61100 5 10 1 1 0 0 1
refdes=C1b
T 62300 60400 5 10 1 1 0 0 1
value=1m
T 62200 61300 5 10 0 0 0 0 1
device=CAPACITOR
T 62200 61500 5 10 0 0 0 0 1
symversion=0.1
}
C 61500 62100 1 270 0 resistor-2.sym
{
T 61850 61700 5 10 0 0 270 0 1
device=RESISTOR
T 61800 61600 5 10 1 1 0 0 1
value=1200
T 61800 61800 5 10 1 1 0 0 1
refdes=Rc2b
}
N 61600 60300 61600 61200 4
N 61600 62100 61600 62600 4
C 62200 59300 1 0 1 npn-3.sym
{
T 61300 59800 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 62200 59300 5 10 0 1 0 6 1
model-name=genericNPN
T 62200 59300 5 10 0 0 0 6 1
model=npn
T 61700 59700 5 10 1 1 0 6 1
refdes=Q2b
}
N 61600 58500 61600 59300 4
N 62000 60800 61600 60800 4
C 60700 57600 1 180 0 vee-1.sym
{
T 60700 57600 5 10 0 0 0 0 1
netname=vee
}
C 60400 58500 1 270 0 resistor-2.sym
{
T 60750 58100 5 10 0 0 270 0 1
device=RESISTOR
T 60700 57900 5 10 1 1 0 0 1
value=5k
T 60700 58100 5 10 1 1 0 0 1
refdes=REb
}
N 59300 58500 61600 58500 4
C 60200 62600 1 0 0 vcc-1.sym
{
T 60300 63000 5 10 0 1 0 0 1
netname=vcc
}
N 59300 62600 61600 62600 4
N 62200 59800 62600 59600 4
{
T 62700 59500 5 10 1 1 0 0 1
netname=Vm
}
T 61000 57900 9 10 1 0 0 0 1
here 0.00085 A
B 65000 56700 8800 8300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 68600 59500 1 0 1 npn-3.sym
{
T 67700 60000 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 68600 59500 5 10 0 1 0 6 1
model-name=genericNPN
T 68600 59500 5 10 0 0 0 6 1
model=npn
T 68100 59900 5 10 1 1 0 6 1
refdes=Q3d
}
C 67800 63200 1 0 0 vcc-1.sym
N 68000 59300 68000 59500 4
C 69800 60200 1 0 0 npn-3.sym
{
T 70700 60700 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 69800 60200 5 10 0 1 0 0 1
model-name=genericNPN
T 69800 60200 5 10 0 0 0 0 1
model=npn
T 70300 60600 5 10 1 1 0 0 1
refdes=Q4d
}
C 70200 62600 1 0 0 vcc-1.sym
N 70400 60000 70400 60200 4
C 68100 62800 1 90 1 resistor-2.sym
{
T 67750 62400 5 10 0 0 90 6 1
device=RESISTOR
T 68200 62400 5 10 1 1 180 6 1
value=22000
T 68200 62200 5 10 1 1 180 6 1
refdes=Rmd
}
N 68000 62800 68000 63200 4
N 68000 60500 68000 61900 4
C 70500 62300 1 90 1 resistor-2.sym
{
T 70150 61900 5 10 0 0 90 6 1
device=RESISTOR
T 70600 61800 5 10 1 1 180 6 1
value=0.01
T 70600 61600 5 10 1 1 180 6 1
refdes=Rld
}
N 70400 62600 70400 62300 4
N 70400 61400 70400 61200 4
N 69800 60700 68000 60700 4
C 68200 59300 1 180 0 vee-1.sym
{
T 68200 59300 5 10 0 0 0 0 1
netname=vee
}
C 70600 60000 1 180 0 vee-1.sym
{
T 70600 60000 5 10 0 0 0 0 1
netname=vee
}
N 68600 60000 68900 60000 4
N 68900 60000 68900 60700 4
T 65100 62700 9 10 1 0 0 0 11
Now we add a current mirror where the resulting current is 420 uA
like in the previous step.

.options savecurrents
.control
save all @rmd[i]  @rld[i] 
tran 0.5ms 0.08s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot  @rmd[i]  @rld[i] 
.endc
B 74000 56700 8800 8300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 77200 62900 1 270 0 resistor-2.sym
{
T 77550 62500 5 10 0 0 270 0 1
device=RESISTOR
T 77500 62400 5 10 1 1 0 0 1
value=1200
T 77500 62600 5 10 1 1 0 0 1
refdes=Rc1e
}
N 77300 61800 77300 62000 4
N 77300 62900 77300 63400 4
N 75700 61300 76700 61300 4
C 76700 60800 1 0 0 npn-3.sym
{
T 77600 61300 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 76700 60800 5 10 0 1 0 0 1
model-name=genericNPN
T 76700 60800 5 10 0 0 0 0 1
model=npn
T 77200 61200 5 10 1 1 0 0 1
refdes=Q1e
}
N 75700 61300 76000 61600 4
{
T 76100 61600 5 10 1 1 0 0 1
netname=Vp
}
N 77300 60000 77300 60800 4
C 79500 62900 1 270 0 resistor-2.sym
{
T 79850 62500 5 10 0 0 270 0 1
device=RESISTOR
T 79800 62400 5 10 1 1 0 0 1
value=1200
T 79800 62600 5 10 1 1 0 0 1
refdes=Rc2e
}
N 79600 61800 79600 62000 4
N 79600 62900 79600 63400 4
C 80200 60800 1 0 1 npn-3.sym
{
T 79300 61300 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 80200 60800 5 10 0 1 0 6 1
model-name=genericNPN
T 80200 60800 5 10 0 0 0 6 1
model=npn
T 79700 61200 5 10 1 1 0 6 1
refdes=Q2e
}
N 79600 60000 79600 60800 4
N 77300 60000 79600 60000 4
C 78200 63400 1 0 0 vcc-1.sym
{
T 78300 63800 5 10 0 1 0 0 1
netname=vcc
}
N 77300 63400 79600 63400 4
N 80200 61300 80600 61100 4
{
T 80700 61000 5 10 1 1 0 0 1
netname=Vm
}
C 76600 57500 1 0 1 npn-3.sym
{
T 75700 58000 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 76600 57500 5 10 0 1 0 6 1
model-name=genericNPN
T 76600 57500 5 10 0 0 0 6 1
model=npn
T 76100 57900 5 10 1 1 0 6 1
refdes=Q3e
}
C 75800 59800 1 0 0 vcc-1.sym
N 76000 57300 76000 57500 4
C 77800 58200 1 0 0 npn-3.sym
{
T 78700 58700 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 77800 58200 5 10 0 1 0 0 1
model-name=genericNPN
T 77800 58200 5 10 0 0 0 0 1
model=npn
T 78300 58600 5 10 1 1 0 0 1
refdes=Q4e
}
N 78400 58000 78400 58200 4
C 76100 59700 1 90 1 resistor-2.sym
{
T 75750 59300 5 10 0 0 90 6 1
device=RESISTOR
T 76200 59300 5 10 1 1 180 6 1
value=3000
T 76200 59100 5 10 1 1 180 6 1
refdes=Rme
}
N 76000 59700 76000 59800 4
N 76000 58500 76000 58800 4
N 78400 59200 78400 60000 4
N 77800 58700 76000 58700 4
C 76200 57300 1 180 0 vee-1.sym
{
T 76200 57300 5 10 0 0 0 0 1
netname=vee
}
C 78600 58000 1 180 0 vee-1.sym
{
T 78600 58000 5 10 0 0 0 0 1
netname=vee
}
N 76600 58000 76900 58000 4
N 76900 58000 76900 58700 4
C 81500 61700 1 270 0 resistor-2.sym
{
T 81850 61300 5 10 0 0 270 0 1
device=RESISTOR
T 81800 61000 5 10 1 1 0 0 1
value=5k
T 81800 61200 5 10 1 1 0 0 1
refdes=RLe
}
C 80100 61700 1 0 0 capacitor-1.sym
{
T 80400 62200 5 10 1 1 0 0 1
refdes=C1e
T 80400 61500 5 10 1 1 0 0 1
value=1m
T 80300 62400 5 10 0 0 0 0 1
device=CAPACITOR
T 80300 62600 5 10 0 0 0 0 1
symversion=0.1
}
N 81600 61900 82200 62100 4
{
T 82200 62100 5 10 1 1 0 0 1
netname=Voe
}
N 80100 61900 79600 61900 4
N 81600 61700 81600 61900 4
N 81600 61900 81000 61900 4
C 81500 60500 1 0 0 gnd-1.sym
{
T 81400 60500 5 10 1 1 0 0 1
netname=0
}
T 74100 64300 9 10 1 0 0 0 3
Now we take the current mirror from step (3) and stick it to the bottom 
of the circuit from step (2), in place of the Reb resistor.
After some experiments, the optimal value for Rme was found to be 3000
C 89100 62300 1 180 1 pnp-3.sym
{
T 90000 61800 5 10 0 0 180 6 1
device=PNP_TRANSISTOR
T 89100 62300 5 10 0 0 180 6 1
model-name=genericPNP
T 89100 62300 5 10 0 0 180 6 1
model=pnp
T 89600 61900 5 10 1 1 180 6 1
refdes=Ql2f
}
B 83100 56700 8800 8300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
N 87400 61100 87400 61300 4
N 85800 60600 86800 60600 4
C 86800 60100 1 0 0 npn-3.sym
{
T 87700 60600 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 86800 60100 5 10 0 1 0 0 1
model-name=genericNPN
T 86800 60100 5 10 0 0 0 0 1
model=npn
T 87300 60500 5 10 1 1 0 0 1
refdes=Q1f
}
N 85800 60600 86100 60900 4
{
T 86200 60900 5 10 1 1 0 0 1
netname=Vp
}
N 87400 59400 87400 60100 4
N 89700 61100 89700 61300 4
N 89700 62300 89700 62700 4
C 90300 60100 1 0 1 npn-3.sym
{
T 89400 60600 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 90300 60100 5 10 0 1 0 6 1
model-name=genericNPN
T 90300 60100 5 10 0 0 0 6 1
model=npn
T 89800 60500 5 10 1 1 0 6 1
refdes=Q2f
}
N 89700 59400 89700 60100 4
N 87400 59400 89700 59400 4
C 88300 62700 1 0 0 vcc-1.sym
{
T 88400 63100 5 10 0 1 0 0 1
netname=vcc
}
N 87400 62700 89700 62700 4
N 90300 60600 90700 60400 4
{
T 90800 60300 5 10 1 1 0 0 1
netname=Vm
}
C 87100 57300 1 0 1 npn-3.sym
{
T 86200 57800 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 87100 57300 5 10 0 1 0 6 1
model-name=genericNPN
T 87100 57300 5 10 0 0 0 6 1
model=npn
T 86600 57700 5 10 1 1 0 6 1
refdes=Q3f
}
C 86300 59600 1 0 0 vcc-1.sym
N 86500 57100 86500 57300 4
C 87900 58000 1 0 0 npn-3.sym
{
T 88800 58500 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 87900 58000 5 10 0 1 0 0 1
model-name=genericNPN
T 87900 58000 5 10 0 0 0 0 1
model=npn
T 88400 58400 5 10 1 1 0 0 1
refdes=Q4f
}
N 88500 57800 88500 58000 4
C 86600 59500 1 90 1 resistor-2.sym
{
T 86250 59100 5 10 0 0 90 6 1
device=RESISTOR
T 86700 59100 5 10 1 1 180 6 1
value=3000
T 86700 58900 5 10 1 1 180 6 1
refdes=Rmf
}
N 86500 59500 86500 59600 4
N 86500 58300 86500 58600 4
N 88500 59000 88500 59400 4
N 87900 58500 86500 58500 4
C 86700 57100 1 180 0 vee-1.sym
{
T 86700 57100 5 10 0 0 0 0 1
netname=vee
}
C 88700 57800 1 180 0 vee-1.sym
{
T 88700 57800 5 10 0 0 0 0 1
netname=vee
}
N 87100 57800 87400 57800 4
N 87400 57800 87400 58500 4
N 90200 61200 90800 61400 4
{
T 90800 61400 5 10 1 1 0 0 1
netname=Vof
}
N 90200 61200 89700 61200 4
C 88000 62300 1 180 0 pnp-3.sym
{
T 87100 61800 5 10 0 0 180 0 1
device=PNP_TRANSISTOR
T 88000 62300 5 10 0 0 180 0 1
model-name=genericPNP
T 88000 62300 5 10 0 0 180 0 1
model=pnp
T 87500 61900 5 10 1 1 180 0 1
refdes=Ql1f
}
N 88200 61800 88200 61200 4
N 88200 61200 87400 61200 4
N 87400 62300 87400 62700 4
N 88000 61800 89100 61800 4
T 75600 62900 9 10 1 0 0 0 1
da 700 a 2400 ua
L 76400 62800 77100 62500 3 0 0 0 -1 -1
L 77100 62600 77100 62500 3 0 0 0 -1 -1
L 77000 62500 77100 62500 3 0 0 0 -1 -1
N 43400 61400 43400 61200 4
N 43400 59200 43400 59000 4
C 40300 63100 1 0 0 spice-directive-1.sym
{
T 40400 63400 5 10 0 1 0 0 1
device=directive
T 40400 63500 5 10 1 1 0 0 1
refdes=A1
T 40300 62100 5 10 1 1 0 0 6
value=.control
tran 50us 2ms
set color0=rgb:f/f/f
set color1=rgb:0/0/0
.endc

}
N 43400 61400 43700 61600 4
{
T 43800 61700 5 10 1 1 0 0 1
netname=Vp
}
N 43400 59000 43800 58800 4
{
T 43900 58700 5 10 1 1 0 0 1
netname=Vm
}
T 39700 64300 9 10 1 0 0 0 4
This is a minimal SPICE control file
that does nothing.  In the examples
you'll have to write your own commands
or modify the control file yourself.
T 53800 64600 9 20 1 0 0 0 1
Step ①
T 63200 64600 9 20 1 0 0 0 1
Step ②
T 72600 64600 9 20 1 0 0 0 1
Step ③
T 81400 64600 9 20 1 0 0 0 1
Step ④
T 83200 61200 9 10 1 0 0 0 19
Here is where the shit hits the fan.
We replace the resistors Rc1e and Rc2e from step (4) with another current mirror.
The reference current for ql1f is the current flowing through q1f.
This means that when q1f collector current goes up, then the collector current for q2f goes down.
But ql2f is bound to have the same current as ql1f, so the difference is greater.
This is supposed to have miraculous effects on the gain.
However, nobody ever mentions the fact that the resulting signal goes horribly distorted.
Sure op-amps are based on the differential amplifier, but
it is surrounded by a huge family of other 
components: to restore the signal to
the original shape (and to ensure 
low output impedance).

.control
tran 0.5ms 0.08s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot vp vof
.endc
T 40700 58500 9 10 1 0 0 0 1
Power supply
T 43200 58500 9 10 1 0 0 0 1
Signal
N 42300 59100 42300 60200 4
