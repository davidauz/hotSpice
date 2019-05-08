v 20130925 2
N 42400 66500 42400 64300 4
C 44000 66700 1 0 0 diode-1.sym
{
T 44400 67300 5 10 0 0 0 0 1
device=DIODE
T 44900 67200 5 10 1 1 180 0 1
refdes=D1
T 44000 66700 5 10 0 0 270 0 1
model-name=D1
T 44000 66700 5 10 0 0 90 0 1
model=d
T 44000 66700 5 10 0 0 90 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
C 43100 66700 1 0 0 diode-1.sym
{
T 43500 67300 5 10 0 0 0 0 1
device=DIODE
T 44000 66800 5 10 1 1 180 0 1
refdes=D3
T 43100 66700 5 10 0 0 270 0 1
model-name=D3
T 43100 66700 5 10 0 0 90 0 1
model=d
T 43100 66700 5 10 0 0 90 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
C 41900 66200 1 90 0 voltage-1.sym
{
T 41400 66300 5 10 0 1 90 0 1
device=VOLTAGE_SOURCE
T 41300 66600 5 10 1 1 180 0 1
refdes=Vsin
T 41900 66200 5 10 0 1 90 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 41900 66200 5 10 0 1 90 0 1
value=SIN (0 10 10  0 0 0) 
}
N 41700 67100 41700 67900 4
N 41700 67900 44000 67900 4
N 44000 67900 44000 66900 4
C 44000 65800 1 0 0 diode-1.sym
{
T 44400 66400 5 10 0 0 0 0 1
device=DIODE
T 44900 66200 5 10 1 1 180 0 1
refdes=D2
T 44000 65800 5 10 0 0 270 0 1
model-name=D2
T 44000 65800 5 10 0 0 90 0 1
model=d
T 44000 65800 5 10 0 0 90 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
C 43100 65800 1 0 0 diode-1.sym
{
T 43500 66400 5 10 0 0 0 0 1
device=DIODE
T 44000 65900 5 10 1 1 180 0 1
refdes=D4
T 43100 65800 5 10 0 0 270 0 1
model-name=D4
T 43100 65800 5 10 0 0 90 0 1
model=d
T 43100 65800 5 10 0 0 90 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
N 43100 66900 42800 66900 4
N 42800 66900 42800 66000 4
N 42800 66000 43100 66000 4
N 44900 66900 45200 66900 4
N 45200 66900 45200 66000 4
N 45200 66000 44900 66000 4
N 41700 66200 41700 65100 4
N 41700 65100 44000 65100 4
N 44000 65100 44000 66000 4
N 42400 66500 42800 66500 4
N 45200 66500 46800 66500 4
N 45600 66500 45900 66800 4
{
T 46000 66800 5 10 1 1 0 0 1
netname=vOut
}
N 42400 64300 46800 64300 4
T 45400 68400 9 10 1 0 0 0 1
A capacitor helps smoothing out the resulting waveform.
C 48100 67200 1 0 0 spice-directive-1.sym
{
T 48200 67500 5 10 0 1 0 0 1
device=directive
T 48200 67600 5 10 1 1 0 0 1
refdes=A1
T 48100 65300 5 10 1 1 0 0 10
value=.control
tran 0.01ms 400ms
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Full wave rectifier"
plot vin vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
N 44000 67600 44300 67900 4
{
T 44400 67900 5 10 1 1 0 0 1
netname=vIn
}
C 45400 65900 1 270 0 capacitor-1.sym
{
T 45900 65100 5 10 1 1 0 0 1
refdes=C1
T 45600 65600 5 10 1 1 0 0 1
value=1000uf
}
N 45600 65900 45600 66500 4
N 45600 65000 45600 64300 4
C 41900 64800 1 0 0 gnd-1.sym
{
T 41900 64800 5 10 0 0 0 0 1
netname=0
}
C 43400 64000 1 0 0 gnd-1.sym
{
T 43400 64000 5 10 0 0 0 0 1
netname=0
}
C 46700 65900 1 270 0 resistor-2.sym
{
T 47500 65300 5 10 1 1 180 0 1
refdes=RLoad
T 46900 65400 5 10 1 1 0 0 1
value=500
}
N 46800 65900 46800 66500 4
N 46800 65000 46800 64300 4
