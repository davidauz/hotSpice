v 20130925 2
C 45600 64700 1 0 0 gnd-1.sym
{
T 45600 64700 5 10 0 0 0 0 1
netname=0
}
N 45700 67600 45700 68700 4
N 45700 66700 45700 65000 4
C 47100 68800 1 180 0 resistor-2.sym
{
T 46700 68900 5 10 1 1 0 0 1
refdes=R2
T 46900 68600 5 10 1 1 180 0 1
value=200
}
N 45700 68700 46200 68700 4
N 47600 68700 47900 69100 4
{
T 47700 69200 5 10 1 1 0 0 1
netname=vOut
}
N 47100 68700 47600 68700 4
N 47600 65000 45700 65000 4
C 47800 66000 1 90 0 capacitor-1.sym
{
T 47300 66500 5 10 1 1 180 0 1
refdes=C1
T 48200 66500 5 10 1 1 180 0 1
value=5uf
}
N 47600 66000 47600 65000 4
N 47600 66900 47600 68700 4
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
value=0 SIN (0 0.05 1000  0 0 0) 
T 45500 67600 5 10 0 0 0 0 1
comment=SIN (Vo Va Freq Td Df Phase)
T 44400 67100 5 10 1 1 0 0 1
refdes=VSIGNAL
}
T 42900 66300 9 10 1 0 0 0 1
sine wave voltage source
L 45000 66400 45500 66900 3 0 0 0 -1 -1
L 45500 66900 45400 66900 3 0 0 0 -1 -1
L 45500 66800 45500 66900 3 0 0 0 -1 -1
T 49000 65500 9 10 1 0 0 0 4
In the voltage plot you'll see that the output
voltage is a bittle 'late' in respect to the 
input voltage.
This is called a 'phase shift'.
C 49000 69900 1 0 0 spice-directive-1.sym
{
T 49100 70200 5 10 0 1 0 0 1
device=directive
T 49100 70300 5 10 1 1 0 0 1
refdes=A1
T 49000 67300 5 10 1 1 0 0 14
value=.options savecurrents
.control
save all @c1[i]
tran 0.01ms 40ms
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="Current"
plot @c1[i]
set curplottitle="Voltages"
plot vin vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 45700 70300 9 15 1 0 0 0 1
The Capacitor (AC)
