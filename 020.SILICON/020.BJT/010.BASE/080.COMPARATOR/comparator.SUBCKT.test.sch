v 20130925 2
C 38300 65300 1 0 0 spice-directive-1.sym
{
T 38400 65600 5 10 0 1 0 0 1
device=directive
T 38400 65700 5 10 1 1 0 0 1
refdes=A1
T 38300 63700 5 10 1 1 0 0 8
value=.options savecurrents
.control
save all
set color0=rgb:f/f/f
set color1=rgb:0/0/0
dc VS10 -1 1 0.001
plot  vo vi vref
.endc
}
N 43800 62800 45100 62800 4
C 39400 62300 1 270 0 voltage-3.sym
{
T 40100 62100 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 39900 61900 5 10 1 1 0 0 1
refdes=V1
T 39900 61700 5 10 1 1 0 0 1
value=DC 9V
}
N 39600 61400 41300 61400 4
C 39400 62300 1 0 0 vcc-1.sym
{
T 39500 62700 5 10 0 1 0 0 1
netname=vcc
}
C 39400 61400 1 270 0 voltage-3.sym
{
T 40100 61200 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 39900 61000 5 10 1 1 0 0 1
refdes=V2
T 39900 60800 5 10 1 1 0 0 1
value=DC 9V
}
C 39800 60500 1 180 0 vee-1.sym
{
T 39800 60500 5 10 0 0 0 0 1
netname=vee
}
N 41300 62300 41600 62600 4
{
T 41700 62600 5 10 1 1 0 0 1
netname=Vi
}
C 41200 60200 1 0 0 gnd-1.sym
{
T 41100 60200 5 10 1 1 0 0 1
netname=0
}
N 41300 60500 41300 61400 4
T 38000 61800 9 10 1 0 0 0 1
Power supply
C 43700 60100 1 0 0 gnd-1.sym
{
T 43600 60100 5 10 1 1 0 0 1
netname=0
}
C 41100 62300 1 270 0 voltage-3.sym
{
T 41800 62100 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 41100 62300 5 10 0 0 0 0 1
value=0 SIN (0 0.5 2  0 0 0) 
T 41100 62300 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 41600 61800 5 10 1 1 0 0 1
refdes=VS10
}
T 41000 65200 9 10 1 0 0 0 1
Test circuit for BJT voltage comparator.
N 43800 62800 43600 63200 4
{
T 43400 63300 5 10 1 1 0 0 1
netname=VRef
}
C 43600 61900 1 270 0 voltage-3.sym
{
T 44300 61700 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 43600 61900 5 10 0 0 0 0 1
value=DC 0.05
T 43600 61900 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 44100 61400 5 10 1 1 0 0 1
refdes=Vr
}
N 43800 60400 43800 61000 4
N 43800 61900 43800 62800 4
C 45600 63900 1 0 0 vcc-1.sym
{
T 45700 64300 5 10 0 1 0 0 1
netname=vcc
}
N 45800 63900 45800 63400 4
C 46000 62100 1 180 0 vee-1.sym
{
T 46000 62100 5 10 0 0 0 0 1
netname=vee
}
N 45800 62100 45800 62600 4
N 44800 63800 45100 63200 4
{
T 44600 63900 5 10 1 1 0 0 1
netname=Vi
}
N 46800 63000 46300 63000 4
N 46800 63000 47200 62600 4
{
T 47300 62500 5 10 1 1 0 0 1
netname=Vo
}
C 45100 62500 1 0 0 voltage-comparator.sym
{
T 45500 63850 5 10 0 0 0 0 1
model-name=voltage_comparator
T 46100 63300 5 10 1 1 0 0 1
device=voltage_comparator
T 45400 63400 5 10 1 1 0 0 1
refdes=X1
T 45100 62500 5 10 0 0 0 0 1
file=comparator.SUBCKT.cir
}
