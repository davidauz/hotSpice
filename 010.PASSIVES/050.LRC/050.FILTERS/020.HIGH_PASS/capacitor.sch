v 20130925 2
N 45700 67600 45700 68700 4
N 45700 66700 45700 65000 4
N 45700 68700 46200 68700 4
N 47600 68700 47900 69100 4
{
T 47700 69200 5 10 1 1 0 0 1
netname=vOut
}
N 47100 68700 47600 68700 4
N 47600 65000 45700 65000 4
N 47600 67500 47600 68700 4
N 47600 66600 47600 65000 4
N 45700 68700 45400 69100 4
{
T 44900 69200 5 10 1 1 0 0 1
netname=vIn
}
C 45500 67600 1 270 0 voltage-3.sym
{
T 46200 67400 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 45500 67600 5 10 0 0 0 0 1
value=AC 1
T 45500 67600 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 44400 67100 5 10 1 1 0 0 1
refdes=VSIGNAL
}
C 46500 64700 1 0 0 gnd-1.sym
{
T 46500 64700 5 10 0 0 0 0 1
netname=0
}
C 47100 68900 1 180 0 capacitor-1.sym
{
T 46600 68200 5 10 1 1 0 0 1
refdes=C1
T 46300 68800 5 10 1 1 0 0 1
value=10uf
}
C 47500 67500 1 270 0 resistor-2.sym
{
T 47500 67200 5 10 1 1 180 0 1
refdes=R2
T 47700 66700 5 10 1 1 0 0 1
value=100
}
C 48800 67400 1 0 0 spice-directive-1.sym
{
T 48900 67700 5 10 0 1 0 0 1
device=directive
T 48900 67800 5 10 1 1 0 0 1
refdes=A1
T 48800 65600 5 10 1 1 0 0 10
value=.control
ac dec 10 1 100k
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="voltages"
plot vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 45100 69900 9 10 1 0 0 0 1
A capacitor in series to a signal acts as a High Pass filter as well.
