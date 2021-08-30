v 20130925 2
C 45500 67600 1 270 0 voltage-3.sym
{
T 46200 67400 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 45500 67600 5 10 0 0 0 0 1
value=pulse (0 1 0.001 0.0001 0.0001 0.001 5) DC 5
T 45500 67600 5 10 0 0 0 0 1
comment=initial v, pulsed v, delay t, rise t, fall t, pulse width,period
T 44700 67100 5 10 1 1 0 0 1
refdes=VPULSE
}
C 45600 64700 1 0 0 gnd-1.sym
{
T 45600 64700 5 10 0 0 0 0 1
netname=0
}
C 47700 66600 1 90 0 inductor-1.sym
{
T 47200 66800 5 10 0 0 90 0 1
device=INDUCTOR
T 47500 66900 5 10 1 1 180 0 1
refdes=L1
T 47000 66800 5 10 0 0 90 0 1
symversion=0.1
T 47700 67000 5 10 1 1 0 0 1
value=0.1H
}
N 47600 67500 47600 68700 4
N 45700 67600 45700 68700 4
N 45700 66700 45700 65000 4
C 47100 68800 1 180 0 resistor-2.sym
{
T 46700 68900 5 10 1 1 0 0 1
refdes=R2
T 46900 68600 5 10 1 1 180 0 1
value=5
}
N 45700 68700 46200 68700 4
N 47600 68700 47900 69100 4
{
T 47700 69200 5 10 1 1 0 0 1
netname=vOut
}
N 47100 68700 47600 68700 4
N 47600 65000 45700 65000 4
C 47800 65300 1 90 0 capacitor-1.sym
{
T 47300 65800 5 10 1 1 180 0 1
refdes=C1
T 48200 65800 5 10 1 1 180 0 1
value=10uf
}
N 47600 66600 47600 66200 4
N 47600 65300 47600 65000 4
T 48700 69400 9 10 1 0 0 0 3
This is called a series resonance circuit.
After an initial pulse, it resonates until the 
damping effect reduces the oscillation to zero.
C 48800 68200 1 0 0 spice-directive-1.sym
{
T 48900 68500 5 10 0 1 0 0 1
device=directive
T 48900 68600 5 10 1 1 0 0 1
refdes=A1
T 48800 65600 5 10 1 1 0 0 14
value=.options savecurrents
.control
save all @l1[i]
tran 0.1ms 200ms
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="RLC series current"
plot @l1[i]
set curplottitle="RLC series voltage"
plot vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 44700 69700 9 15 1 0 0 0 1
Resonance
