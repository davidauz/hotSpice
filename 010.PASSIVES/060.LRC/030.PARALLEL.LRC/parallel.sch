v 20130925 2
C 45500 67600 1 270 0 voltage-3.sym
{
T 46200 67400 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 45500 67600 5 10 0 0 0 0 1
value=pulse (0 1 0.001 0.0001 0.0001 0.05 5)
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
value=100
}
N 45700 68700 46200 68700 4
N 47600 68700 47900 69100 4
{
T 47700 69200 5 10 1 1 0 0 1
netname=vOut
}
N 47100 68700 48200 68700 4
C 47800 66400 1 90 0 capacitor-1.sym
{
T 47200 66800 5 10 1 1 180 0 1
refdes=C1
T 47300 67100 5 10 1 1 180 0 1
value=10uf
}
C 48800 66400 1 90 0 inductor-1.sym
{
T 48300 66600 5 10 0 0 90 0 1
device=INDUCTOR
T 49000 66700 5 10 1 1 180 0 1
refdes=L1
T 48100 66600 5 10 0 0 90 0 1
symversion=0.1
T 48800 66800 5 10 1 1 0 0 1
value=0.001
}
N 45700 68700 45200 69100 4
{
T 44900 69200 5 10 1 1 0 0 1
netname=vIn
}
N 47600 67300 47600 67500 4
N 47600 67500 48700 67500 4
N 48700 67500 48700 67300 4
N 47600 66400 47600 66100 4
N 47600 66100 48700 66100 4
N 48700 66100 48700 66400 4
N 45700 65500 48200 65500 4
N 48200 65500 48200 66100 4
N 48200 67500 48200 68700 4
T 46400 69500 9 10 1 0 0 0 4
This is a simple parallel resonance circuit (tank circuit).
The tank ciruit resonates until the damping effect 
reduces the oscillation to zero.  

C 49500 68000 1 0 0 spice-directive-1.sym
{
T 49600 68300 5 10 0 1 0 0 1
device=directive
T 49600 68400 5 10 1 1 0 0 1
refdes=A1
T 49600 64400 5 10 1 1 0 0 18
value=* savecurrents has to be BEFORE .control OR WONT WORK                                                                                                                                                               
.options savecurrents                                                                                                                                                                                               
                                                                                                                                                                                                                    
.control                                                                                                                                                                                                            
save all
                                                                                                                                                                                                                    
* transient analysis                                                                                                                                                                                                
* tran Tstep Tstop [ Tstart [ Tmax ] ] [ UIC ]                                                                                                                                                                      
tran 0.01ms 20ms

set color0=rgb:f/f/f                                                                                                                                                                                                
set color1=rgb:0/0/0                                                                                                                                                                                                

set curplottitle="Parallel resonant circuit currents"
plot @c1[i] @l1[i]
set curplottitle="Parallel resonant circuit voltages"
plot vin vout
.endc            
}
