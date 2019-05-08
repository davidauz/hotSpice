v 20130925 2
C 45600 64700 1 0 0 gnd-1.sym
{
T 45600 64700 5 10 0 0 0 0 1
netname=0
}
N 45700 67600 45700 68700 4
N 45700 66700 45700 65000 4
N 47600 65000 45700 65000 4
N 47600 66000 47600 65000 4
N 45700 68700 45400 69100 4
{
T 44900 69200 5 10 1 1 0 0 1
netname=vIn
}
N 45700 68700 47600 68700 4
N 47600 67400 47600 66900 4
N 47600 68300 47600 68700 4
N 47600 67000 48000 67300 4
{
T 48000 67400 5 10 1 1 0 0 1
netname=vOut
}
C 47400 68300 1 270 0 diode-1.sym
{
T 48000 67900 5 10 0 0 270 0 1
device=DIODE
T 47800 67900 5 10 1 1 0 0 1
refdes=D1
T 47400 68300 5 10 0 0 180 0 1
model-name=D
T 47400 68300 5 10 0 0 0 0 1
model=default
T 47400 68300 5 10 0 0 0 0 1
comment=bv=reverse breakdown voltage, n = ideality factor, vj=junction potential=
}
C 47500 66900 1 270 0 resistor-2.sym
{
T 47500 66500 5 10 1 1 180 0 1
refdes=R2
T 47700 66400 5 10 1 1 0 0 1
value=100
}
C 45900 66700 1 90 0 voltage-1.sym
{
T 45400 66800 5 10 0 1 90 0 1
device=VOLTAGE_SOURCE
T 45300 67100 5 10 1 1 180 0 1
refdes=Vsin
T 45900 66700 5 10 0 1 90 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 45900 66700 5 10 0 1 90 0 1
value=SIN (0 10 10  0 0 0) 
}
C 49400 69300 1 0 0 spice-directive-1.sym
{
T 49500 69600 5 10 0 1 0 0 1
device=directive
T 49500 69700 5 10 1 1 0 0 1
refdes=A1
T 49400 67400 5 10 1 1 0 0 10
value=.control
tran 0.01ms 400ms
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Half wave rectifier"
plot vin vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 46100 69700 9 10 1 0 0 0 2
Turns out "Half wave rectifier"
is just a diode.
