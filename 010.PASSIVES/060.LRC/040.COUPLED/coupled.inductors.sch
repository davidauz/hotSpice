v 20130925 2
C 47400 46000 1 270 0 voltage-3.sym
{
T 48100 45800 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 47400 46000 5 10 0 0 0 0 1
value=0 SIN (0 5 50  0 0 0) 
T 47400 46000 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 47000 45500 5 10 1 1 0 0 1
refdes=V1
}
C 47500 43800 1 0 0 gnd-1.sym
{
T 47500 43800 5 10 0 0 0 0 1
netname=0
}
C 49400 46300 1 270 0 inductor-1.sym
{
T 49900 46100 5 10 0 0 270 0 1
device=INDUCTOR
T 50100 46100 5 10 0 0 270 0 1
symversion=0.1
T 49100 46000 5 10 1 1 0 0 1
refdes=L1
T 49300 45800 5 10 1 1 180 0 1
value=0.01
}
N 47600 45100 47600 44100 4
N 49500 44100 47600 44100 4
N 47600 46000 47600 47000 4
N 47600 47000 49500 47000 4
N 49500 47000 49500 46300 4
C 49400 45300 1 270 0 resistor-2.sym
{
T 49300 44900 5 10 1 1 180 0 1
refdes=R2
T 49100 44600 5 10 1 1 0 0 1
value=100
}
N 49500 45400 49500 45300 4
N 49500 44400 49500 44100 4
C 49900 45400 1 90 0 inductor-1.sym
{
T 49400 45600 5 10 0 0 90 0 1
device=INDUCTOR
T 49200 45600 5 10 0 0 90 0 1
symversion=0.1
T 50100 46100 5 10 1 1 180 0 1
refdes=L2
T 49900 45700 5 10 1 1 0 0 1
value=0.01
}
C 49100 46000 1 0 0 kmutual-1.sym
{
T 49000 46450 5 10 1 1 0 0 1
refdes=K1
T 49400 46300 5 10 0 1 0 0 1
value=0.5
T 49400 46095 5 10 0 1 0 0 1
inductors=L1 L2
T 49100 45990 5 10 0 1 0 0 1
device=K
}
C 51100 46300 1 270 0 resistor-2.sym
{
T 51600 46000 5 10 1 1 180 0 1
refdes=R1
T 51400 45600 5 10 1 1 0 0 1
value=10
}
N 49800 46300 49800 47000 4
N 49800 47000 51200 47000 4
N 51200 47000 51200 46300 4
N 49800 45400 49800 44700 4
N 49800 44700 51200 44700 4
N 51200 44700 51200 45400 4
C 51100 44400 1 0 0 gnd-1.sym
{
T 51100 44400 5 10 0 0 0 0 1
netname=0
}
N 51200 47000 51500 47400 4
{
T 51300 47500 5 10 1 1 0 0 1
netname=vOut
}
T 46600 42800 9 10 1 0 0 0 1
The K1 element is ngspice's way to define the way L1 and L2 are coupled.
T 46600 43100 9 10 1 0 0 0 1
V1 is generating a sinusoid.
T 47200 47900 9 10 1 0 0 0 8
Two inductors built in a way that influence each other are 
said to be coupled.  
ngspice offers a neat way to represent coupled inductors 
via an additional component named K that specifies the 
relationship between the two.  
In this example a SIN source passes through two coupled 
inductors; in the resulting plot the change of phase shows 
very nicely.
C 52600 49100 1 0 0 spice-directive-1.sym
{
T 52700 49400 5 10 0 1 0 0 1
device=directive
T 52700 49500 5 10 1 1 0 0 1
refdes=A1
T 52600 46500 5 10 1 1 0 0 14
value=.options savecurrents
.control
save all @l1[i] @l2[i]
tran 0.1ms 200ms
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Currents"
plot @l1[i] @l2[i]
set curplottitle="Voltage"
plot vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
