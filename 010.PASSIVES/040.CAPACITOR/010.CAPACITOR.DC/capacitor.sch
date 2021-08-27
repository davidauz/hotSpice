v 20130925 2
C 45500 67600 1 270 0 voltage-3.sym
{
T 46200 67400 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 45500 67600 5 10 0 0 0 0 1
value=pulse (0 1 0.001 0.0001 0.0001 0.01 5) DC 5
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
C 47800 66300 1 90 0 capacitor-1.sym
{
T 47300 66800 5 10 1 1 180 0 1
refdes=C1
T 48200 66800 5 10 1 1 180 0 1
value=10uf
}
N 47600 66300 47600 65000 4
N 47600 67200 47600 68700 4
N 45700 68700 45400 69100 4
{
T 44900 69200 5 10 1 1 0 0 1
netname=vIn
}
T 49000 67700 9 10 1 0 0 0 7
The capacitor is initially discharged and it behaves
like a closed switch, so at the beginning the current
flows freely and vout is zero.
As it charges, its internal resistance gets higher, so
vout increases and the current decreases.
When the pulse ends, it begins discharging, and 
vout drops to zero again.
T 44000 69900 9 10 1 0 0 0 2
This is to show what a capacitor does when linked to a voltage source.  
The source starts at zero, goes up to 1V, stays there for a while, then goes back to zero.
C 49200 66300 1 0 0 spice-directive-1.sym
{
T 49300 66600 5 10 0 1 0 0 1
device=directive
T 49300 66700 5 10 1 1 0 0 1
refdes=A1
T 49200 63600 5 10 1 1 0 0 14
value=.options savecurrents
.control
save all @c1[i]
tran 0.01ms 20ms
set color0=rgb:f/f/f
set color1=rgb:0/0/0
set curplottitle="RLC: current"
plot @c1[i]
set curplottitle="RLC: voltage"
plot vin vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 45800 70600 9 15 1 0 0 0 1
The Capacitor
