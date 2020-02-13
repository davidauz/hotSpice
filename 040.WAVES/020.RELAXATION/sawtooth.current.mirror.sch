v 20130925 2
C 83500 37900 1 270 0 voltage-3.sym
{
T 84200 37700 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 84000 37500 5 10 1 1 0 0 1
refdes=V1
T 84000 37300 5 10 1 1 0 0 1
value=DC 5V
}
C 83600 36700 1 0 0 gnd-1.sym
{
T 83500 36700 5 10 1 1 0 0 1
netname=0
}
C 83500 37900 1 0 0 vcc-1.sym
C 91500 34900 1 0 0 spice-directive-1.sym
{
T 91600 35200 5 10 0 1 0 0 1
device=directive
T 91600 35300 5 10 1 1 0 0 1
refdes=A1
T 91500 33300 5 10 1 1 0 0 9
value=.options savecurrents
.control
save all 
tran 0.01ms 0.1s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot o2 o1
.endc

}
C 85000 30900 1 0 0 npn-3.sym
{
T 85900 31400 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 85000 30900 5 10 0 0 0 0 1
model-name=2N5551
T 85000 30900 5 10 0 0 0 0 1
model=npn
T 85500 31300 5 10 1 1 0 0 1
refdes=Q2
}
C 85500 33200 1 270 0 resistor-2.sym
{
T 85850 32800 5 10 0 0 270 0 1
device=RESISTOR
T 85700 32800 5 10 1 1 0 0 1
refdes=R3
T 85700 32600 5 10 1 1 0 0 1
value=270
}
N 85600 29600 85600 30900 4
N 85600 31900 85600 32300 4
N 85600 28400 85600 28700 4
C 85500 29600 1 270 0 resistor-2.sym
{
T 85850 29200 5 10 0 0 270 0 1
device=RESISTOR
T 85700 29200 5 10 1 1 0 0 1
refdes=R6
T 85700 29000 5 10 1 1 0 0 1
value=230
}
N 84000 29800 84000 30000 4
N 85600 33200 85600 34000 4
C 87000 31700 1 270 0 resistor-2.sym
{
T 87350 31300 5 10 0 0 270 0 1
device=RESISTOR
T 86600 31200 5 10 1 1 0 0 1
value=3000
T 87300 31200 5 10 1 1 0 0 1
refdes=R7
}
C 87000 30500 1 270 0 resistor-2.sym
{
T 87350 30100 5 10 0 0 270 0 1
device=RESISTOR
T 86600 30000 5 10 1 1 0 0 1
value=1000
T 87300 30000 5 10 1 1 0 0 1
refdes=R8
}
N 87100 31700 87100 32300 4
N 87100 30800 87100 30500 4
N 87100 28400 87100 29600 4
N 88500 30600 87100 30600 4
N 85600 32300 87100 32300 4
C 88500 30100 1 0 0 npn-3.sym
{
T 89400 30600 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 88500 30100 5 10 0 0 0 0 1
model-name=2N5551
T 88500 30100 5 10 0 0 0 0 1
model=npn
T 89000 30500 5 10 1 1 0 0 1
refdes=Q3
}
C 89000 33000 1 270 0 resistor-2.sym
{
T 89350 32600 5 10 0 0 270 0 1
device=RESISTOR
T 88600 32500 5 10 1 1 0 0 1
value=1000
T 89300 32500 5 10 1 1 0 0 1
refdes=R9
}
N 89100 32100 89100 31100 4
N 89100 31600 90800 31600 4
{
T 89800 32200 5 10 1 1 0 6 1
netname=Vo
}
N 89100 28400 89100 30100 4
N 89100 33000 89100 34000 4
N 85600 27700 85600 28400 4
N 83700 31400 85000 31400 4
N 83900 29700 84000 29800 4
N 84000 30000 83900 30100 4
N 83900 30100 83900 31400 4
C 82800 31300 1 0 0 resistor-2.sym
{
T 83200 31650 5 10 0 0 0 0 1
device=RESISTOR
T 83500 31700 5 10 1 1 180 0 1
value=1500
T 83200 31700 5 10 1 1 0 0 1
refdes=R4
}
N 82100 31400 82800 31400 4
C 81500 30200 1 0 0 npn-3.sym
{
T 82400 30700 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 81500 30200 5 10 0 0 0 0 1
model-name=2N5551
T 81500 30200 5 10 0 0 0 0 1
model=npn
T 82000 30600 5 10 1 1 0 0 1
refdes=Q1
}
N 82100 30200 82100 29900 4
N 82100 29900 85600 29900 4
N 75600 30700 81500 30700 4
C 83800 29600 1 270 0 resistor-2.sym
{
T 84000 29200 5 10 1 1 0 0 1
refdes=R5
T 84000 29000 5 10 1 1 0 0 1
value=6042
T 84150 29200 5 10 0 0 270 0 1
device=RESISTOR
}
N 83900 28700 83900 28400 4
N 83900 29600 83900 29700 4
C 82000 33200 1 270 0 resistor-2.sym
{
T 82350 32800 5 10 0 0 270 0 1
device=RESISTOR
T 82600 32800 5 10 1 1 180 0 1
refdes=R2
T 82600 33000 5 10 1 1 180 0 1
value=500
}
N 82100 33200 82100 34000 4
N 82100 31200 82100 32300 4
N 82100 34000 89100 34000 4
N 83900 28400 89100 28400 4
C 85400 34000 1 0 0 vcc-1.sym
C 85500 27400 1 0 0 gnd-1.sym
{
T 85400 27400 5 10 1 1 0 0 1
netname=0
}
N 90800 31600 91300 31900 4
{
T 91100 31600 5 10 1 1 0 0 1
netname=o1
}
C 75800 29800 1 90 0 capacitor-1.sym
{
T 75300 30300 5 10 1 1 180 0 1
refdes=C1
T 76200 30200 5 10 1 1 180 0 1
value=5u
}
C 75500 29500 1 0 0 gnd-1.sym
{
T 75400 29500 5 10 1 1 0 0 1
netname=0
}
N 75600 30700 75300 30900 4
{
T 75100 30600 5 10 1 1 0 0 1
netname=o2
}
N 90100 35500 90100 31600 4
C 91500 32300 1 0 0 spice-include-1.sym
{
T 91600 32600 5 10 0 1 0 0 1
device=include
T 91600 32700 5 10 1 1 0 0 1
refdes=A2
T 92000 32400 5 10 1 1 0 0 1
file=2N5551.mod
}
N 75600 35500 90100 35500 4
C 73200 32000 1 0 1 npn-3.sym
{
T 72300 32500 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 73200 32000 5 10 0 1 0 6 1
model-name=genericNPN
T 73200 32000 5 10 0 0 0 6 1
model=npn
T 72700 32400 5 10 1 1 0 6 1
refdes=Q3d
}
N 72600 31800 72600 32000 4
C 72700 34700 1 90 1 resistor-2.sym
{
T 72350 34300 5 10 0 0 90 6 1
device=RESISTOR
T 72800 34300 5 10 1 1 180 6 1
value=5k
T 72800 34100 5 10 1 1 180 6 1
refdes=Rmd
}
N 72600 33000 72600 33800 4
N 73200 32500 73500 32500 4
N 73500 32500 73500 33200 4
C 72500 31500 1 0 0 gnd-1.sym
{
T 72400 31500 5 10 1 1 0 0 1
netname=0
}
N 74400 33200 72600 33200 4
C 74400 32700 1 0 0 npn-3.sym
{
T 75300 33200 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 74400 32700 5 10 0 1 0 0 1
model-name=genericNPN
T 74400 32700 5 10 0 0 0 0 1
model=npn
T 74900 33100 5 10 1 1 0 0 1
refdes=Q4d
}
C 76900 33700 1 180 0 pnp-3.sym
{
T 76000 33200 5 10 0 0 180 0 1
device=PNP_TRANSISTOR
T 76900 33700 5 10 0 0 180 0 1
model-name=genericPNP
T 76900 33700 5 10 0 0 180 0 1
model=pnp
T 76400 33300 5 10 1 1 180 0 1
refdes=Ql2f
}
C 78000 33700 1 180 1 pnp-3.sym
{
T 78900 33200 5 10 0 0 180 6 1
device=PNP_TRANSISTOR
T 78000 33700 5 10 0 0 180 6 1
model-name=genericPNP
T 78000 33700 5 10 0 0 180 6 1
model=pnp
T 78500 33300 5 10 1 1 180 6 1
refdes=Ql1f
}
N 77800 33200 77800 32600 4
N 77800 32600 78600 32600 4
N 78000 33200 76900 33200 4
N 78600 32700 78600 32600 4
C 72400 34700 1 0 0 vcc-1.sym
N 75000 33700 75000 34100 4
N 75000 34100 76300 34100 4
N 76300 34100 76300 33700 4
N 75000 32700 75000 32300 4
N 75000 32300 76300 32300 4
N 76300 32300 76300 32700 4
C 78700 34600 1 90 1 resistor-2.sym
{
T 78350 34200 5 10 0 0 90 6 1
device=RESISTOR
T 78800 34200 5 10 1 1 180 6 1
value=5k
T 78800 34000 5 10 1 1 180 6 1
refdes=Rmd2
}
C 78400 34600 1 0 0 vcc-1.sym
C 78500 32300 1 0 0 gnd-1.sym
{
T 78400 32300 5 10 1 1 0 0 1
netname=0
}
N 75600 35500 75600 34100 4
N 75600 30700 75600 32300 4
