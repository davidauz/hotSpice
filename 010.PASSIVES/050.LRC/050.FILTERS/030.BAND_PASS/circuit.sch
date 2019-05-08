v 20130925 2
C 45600 65500 1 0 0 gnd-1.sym
{
T 45600 65500 5 10 0 0 0 0 1
netname=0
}
N 45700 67600 45700 68700 4
N 45700 68700 45400 69100 4
{
T 44900 69200 5 10 1 1 0 0 1
netname=vIn
}
C 49600 66800 1 90 0 capacitor-1.sym
{
T 49000 67200 5 10 1 1 180 0 1
refdes=C2
T 49100 67500 5 10 1 1 180 0 1
value=10uf
}
N 49400 68700 49700 69100 4
{
T 49500 69200 5 10 1 1 0 0 1
netname=vOut
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
C 48100 68600 1 0 0 resistor-2.sym
{
T 48500 68800 5 10 1 1 0 0 1
refdes=R2
T 48800 68600 5 10 1 1 180 0 1
value=100
}
C 47100 68900 1 180 0 capacitor-1.sym
{
T 46500 69000 5 10 1 1 0 0 1
refdes=C1
T 46500 68200 5 10 1 1 0 0 1
value=10uf
}
C 47800 66800 1 90 0 resistor-2.sym
{
T 47500 67300 5 10 1 1 180 0 1
refdes=R1
T 47800 67200 5 10 1 1 0 0 1
value=500
}
N 46200 68700 45700 68700 4
N 47100 68700 48100 68700 4
N 47700 68700 47700 67700 4
N 45700 66700 45700 65800 4
N 45700 65800 49400 65800 4
N 47700 65800 47700 66800 4
N 49400 66800 49400 65800 4
N 49400 67700 49400 68700 4
N 49400 68700 49000 68700 4
C 50600 67600 1 0 0 spice-directive-1.sym
{
T 50700 67900 5 10 0 1 0 0 1
device=directive
T 50700 68000 5 10 1 1 0 0 1
refdes=A1
T 50600 65800 5 10 1 1 0 0 10
value=.control
ac dec 50 1 100k
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Voltages"
plot vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 50500 68900 9 10 1 0 0 0 3
One capacitor blocks high frequencies,
another blocks low frequencies, as a result 
only a band of frequencies are allowed to pass.
