v 20130925 2
N 45300 64700 49100 64700 4
N 45300 67200 45300 64700 4
C 46900 67400 1 0 0 diode-1.sym
{
T 47300 68000 5 10 0 0 0 0 1
device=DIODE
T 47800 67900 5 10 1 1 180 0 1
refdes=D1
T 46900 67400 5 10 0 0 270 0 1
model-name=D1
T 46900 67400 5 10 0 0 90 0 1
model=d
T 46900 67400 5 10 0 0 90 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
C 46000 67400 1 0 0 diode-1.sym
{
T 46400 68000 5 10 0 0 0 0 1
device=DIODE
T 46900 67500 5 10 1 1 180 0 1
refdes=D3
T 46000 67400 5 10 0 0 270 0 1
model-name=D3
T 46000 67400 5 10 0 0 90 0 1
model=d
T 46000 67400 5 10 0 0 90 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
C 44800 66900 1 90 0 voltage-1.sym
{
T 44300 67000 5 10 0 1 90 0 1
device=VOLTAGE_SOURCE
T 44200 67300 5 10 1 1 180 0 1
refdes=Vsin
T 44800 66900 5 10 0 1 90 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 44800 66900 5 10 0 1 90 0 1
value=SIN (0 10 10  0 0 0) 
}
N 44600 67800 44600 68600 4
N 44600 68600 46900 68600 4
N 46900 68600 46900 67600 4
C 46900 66500 1 0 0 diode-1.sym
{
T 47300 67100 5 10 0 0 0 0 1
device=DIODE
T 47800 66900 5 10 1 1 180 0 1
refdes=D2
T 46900 66500 5 10 0 0 270 0 1
model-name=D2
T 46900 66500 5 10 0 0 90 0 1
model=d
T 46900 66500 5 10 0 0 90 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
C 46000 66500 1 0 0 diode-1.sym
{
T 46400 67100 5 10 0 0 0 0 1
device=DIODE
T 46900 66600 5 10 1 1 180 0 1
refdes=D4
T 46000 66500 5 10 0 0 270 0 1
model-name=D4
T 46000 66500 5 10 0 0 90 0 1
model=d
T 46000 66500 5 10 0 0 90 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
N 46000 67600 45700 67600 4
N 45700 67600 45700 66700 4
N 45700 66700 46000 66700 4
N 47800 67600 48100 67600 4
N 48100 67600 48100 66700 4
N 48100 66700 47800 66700 4
N 44600 66900 44600 65800 4
N 44600 65800 46900 65800 4
N 46900 65800 46900 66700 4
N 45300 67200 45700 67200 4
N 48100 67200 49100 67200 4
N 48500 67200 48800 67500 4
{
T 48900 67500 5 10 1 1 0 0 1
netname=vOut
}
T 41700 68700 9 10 1 0 0 0 3
A sine wave voltage source passes through a full wave rectifier,
so that the negative part of the curve is mirrored in the
positive quadrant.
C 40000 66500 1 0 0 spice-directive-1.sym
{
T 40100 66800 5 10 0 1 0 0 1
device=directive
T 40100 66900 5 10 1 1 0 0 1
refdes=A1
T 40000 64600 5 10 1 1 0 0 10
value=.control
tran 0.01ms 400ms
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Full wave rectifier"
plot vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
N 46900 68600 47200 68900 4
{
T 47300 68900 5 10 1 1 0 0 1
netname=vIn
}
C 49000 66400 1 270 0 resistor-2.sym
{
T 49800 66600 5 10 1 1 180 0 1
refdes=RLoad
T 49500 65700 5 10 1 1 0 0 1
value=1000
}
N 49100 66400 49100 67200 4
N 49100 65500 49100 64700 4
C 46500 64400 1 0 0 gnd-1.sym
{
T 46500 64400 5 10 0 0 0 0 1
netname=0
}
