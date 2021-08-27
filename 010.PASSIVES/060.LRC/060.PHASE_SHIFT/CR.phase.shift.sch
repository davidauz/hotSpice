v 20130925 2
C 45600 65300 1 0 0 gnd-1.sym
{
T 45600 65300 5 10 0 0 0 0 1
netname=0
}
N 45700 67600 45700 68700 4
N 45700 66700 45700 65600 4
N 45700 68700 46200 68700 4
N 47600 68700 47900 69100 4
{
T 47700 69200 5 10 1 1 0 0 1
netname=vO1
}
N 47100 68700 48100 68700 4
N 45700 65600 51500 65600 4
N 47600 66700 47600 65600 4
N 47600 67600 47600 68700 4
N 45700 68700 45400 69100 4
{
T 44900 69200 5 10 1 1 0 0 1
netname=vIn
}
C 45500 67600 1 270 0 voltage-3.sym
{
T 46200 67400 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 44400 66700 5 10 0 1 0 0 1
value=0 SIN ( 0 5 50 )
T 45500 67600 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 44400 67100 5 10 1 1 0 0 1
refdes=VSIGNAL
}
N 49500 68700 49800 69100 4
{
T 49600 69200 5 10 1 1 0 0 1
netname=vO2
}
N 49000 68700 50100 68700 4
N 49500 66700 49500 65600 4
N 49500 67600 49500 68700 4
N 51500 68700 51800 69100 4
{
T 51600 69200 5 10 1 1 0 0 1
netname=vO3
}
N 51000 68700 51500 68700 4
N 51500 66700 51500 65600 4
N 51500 67600 51500 68700 4
T 46200 69800 9 10 1 0 0 0 2
In the previoous circuit there were resistors and capacitors (RC).
The same happens with capacitors and resistors (CR).
C 47500 67600 1 270 0 resistor-2.sym
{
T 47100 67200 5 10 1 1 0 0 1
refdes=R1
T 47400 67100 5 10 1 1 180 0 1
value=500
}
C 49400 67600 1 270 0 resistor-2.sym
{
T 49000 67200 5 10 1 1 0 0 1
refdes=R2
T 49200 67100 5 10 1 1 180 0 1
value=500
}
C 51400 67600 1 270 0 resistor-2.sym
{
T 51100 67200 5 10 1 1 0 0 1
refdes=R3
T 51300 67100 5 10 1 1 180 0 1
value=500
}
C 47100 68900 1 180 0 capacitor-1.sym
{
T 46700 69400 5 10 1 1 180 0 1
refdes=C1
T 46800 69200 5 10 1 1 180 0 1
value=10uf
}
C 49000 68900 1 180 0 capacitor-1.sym
{
T 48600 69300 5 10 1 1 180 0 1
refdes=C2
T 48700 69100 5 10 1 1 180 0 1
value=10uf
}
C 51000 68900 1 180 0 capacitor-1.sym
{
T 50600 69400 5 10 1 1 180 0 1
refdes=C3
T 50700 69200 5 10 1 1 180 0 1
value=10uf
}
C 52400 67900 1 0 0 spice-directive-1.sym
{
T 52500 68200 5 10 0 1 0 0 1
device=directive
T 52500 68300 5 10 1 1 0 0 1
refdes=A1
T 52400 66300 5 10 1 1 0 0 9
value=.control
set color0=rgb:f/f/f
set color1=rgb:0/0/0
tran 0.5ms 0.08s
plot vin vo1 vo2 vo3
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
