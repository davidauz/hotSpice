v 20130925 2
N 45700 67600 45700 68700 4
N 45700 66700 45700 65000 4
C 47100 68800 1 180 0 resistor-2.sym
{
T 46700 68900 5 10 1 1 0 0 1
refdes=R2
T 46900 68600 5 10 1 1 180 0 1
value=100
}
N 45700 68700 46200 68700 4
N 47600 68700 47900 69100 4
{
T 47700 69200 5 10 1 1 0 0 1
netname=vOut
}
N 47100 68700 47600 68700 4
N 47600 65000 45700 65000 4
C 47700 66600 1 90 0 inductor-1.sym
{
T 47200 66800 5 10 0 0 90 0 1
device=INDUCTOR
T 47500 66900 5 10 1 1 180 0 1
refdes=L1
T 47000 66800 5 10 0 0 90 0 1
symversion=0.1
T 47700 67000 5 10 1 1 0 0 1
value=0.01
}
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
C 49400 67500 1 0 0 spice-directive-1.sym
{
T 49500 67800 5 10 0 1 0 0 1
device=directive
T 49500 67900 5 10 1 1 0 0 1
refdes=A1
T 49400 65300 5 10 1 1 0 0 12
value=.control
* ac analysis
* ac ( DEC | OCT | LIN ) N Fstart Fstop
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
T 49100 69600 9 10 1 0 0 0 3
An inductor in parallel to a signal acts as a High Pass filter.
This means that only the higher frequencies will pass through, 
while the low frequency ones will be filtered out.
T 45000 63500 9 10 1 0 0 0 4
Here the directive tells ngspice to perform an AC analysis, i.e. see how the circuit 
behaves running it at different frequencies.   The plot tells us that at low frequencies
the output is low, while it is high at high frequencies.  Only the high frequencies
will pass through this filter.
L 47400 64300 49300 66900 3 0 0 0 -1 -1
L 49300 66900 49300 66800 3 0 0 0 -1 -1
L 49200 66900 49300 66900 3 0 0 0 -1 -1
