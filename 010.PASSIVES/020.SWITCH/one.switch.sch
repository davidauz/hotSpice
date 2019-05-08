v 20130925 2
C 58000 50100 1 0 0 spice-vc-switch-1.sym
{
T 59600 50800 5 8 0 0 0 0 1
device=SPICE-VC-switch
T 58700 50250 5 8 0 1 0 0 1
model-name=swmod
T 57700 51500 5 10 0 1 0 0 1
model=VT=0.95 VH=0 ron=1e-12 roff=1e12
T 58000 50100 5 10 0 0 0 0 1
value=off
T 58800 50200 5 12 1 1 0 0 1
refdes=S1
}
C 57200 51200 1 270 0 voltage-3.sym
{
T 57900 51000 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 57200 51200 5 10 0 0 0 0 1
value=pulse (0 5 0.1 0.001 0.001 0.1 0.5) DC 5
T 57200 51200 5 10 0 0 0 0 1
comment=initial v, pulsed v, delay t, rise t, fall t, pulse width, period
T 56900 50700 5 10 1 1 0 0 1
refdes=V1
T 53100 51300 5 10 0 1 0 0 1
comment=This is a pulsed voltage source
}
N 57400 51200 58200 51200 4
N 58200 51200 58200 51100 4
N 57400 50300 58200 50300 4
N 58200 50300 58200 50500 4
N 59900 51100 59900 52000 4
N 59900 49800 59900 50500 4
C 57700 49600 1 0 0 gnd-1.sym
N 57800 49900 57800 50300 4
C 59100 48300 1 0 0 gnd-1.sym
C 55600 50800 1 270 0 voltage-3.sym
{
T 56300 50600 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 55300 50300 5 10 1 1 0 0 1
refdes=V2
T 56000 50300 5 10 1 1 0 0 1
value=DC 10V
T 53000 50100 5 10 1 1 0 0 1
comment=This is a plain 10V voltage source
}
N 59900 52000 55800 52000 4
N 55800 52000 55800 50800 4
N 55800 49900 55800 48600 4
N 55800 48600 59900 48600 4
N 59700 50500 59900 50500 4
N 59900 48600 59900 48900 4
C 59800 49800 1 270 0 resistor-2.sym
{
T 60150 49400 5 10 0 0 270 0 1
device=RESISTOR
T 60100 49300 5 10 1 1 0 0 1
refdes=R1
T 59400 49300 5 10 1 1 0 0 1
value=100
}
N 59700 51100 59900 51100 4
T 60100 53400 9 10 1 0 0 0 4
The Voltage Controlled Switch is VERY useful when you want to 
simulate the push of a button.  
Just link it to a voltage pulse and voilà, you can simulate all the 
buttons you want.
N 59900 50100 60300 50400 4
{
T 60400 50500 5 10 1 1 0 0 1
netname=Vout
}
N 57500 51200 57200 51600 4
{
T 56500 51600 5 10 1 1 0 0 1
netname=VPulse
}
T 61700 52000 9 10 1 0 0 0 6
V1 is a pulsed voltage source; it starts from 0V,
waits 0.1 seconds, goes up to 5V, stays there for
0.1 seconds, then goes back to 0.

Al lthis is repeated every 0.5 seconds.
See the attributes of "V1" for details.
T 61700 50600 9 10 1 0 0 0 5
ngspice outputs a nice plot where
you can see the pulsed voltage and the 
output voltage.
ngspice plots all disappear when Ctrl+D is pressed
in the command line (or 'quit'+ENTER is typed).
T 54500 53000 9 10 1 0 0 0 6
This is only to test how to implement a voltage controlled 
switch in ngspice.  
I know the circuit does not make much sense but at the 
beginning I had extreme difficulty wrapping my head around 
this so I decided to leave it there anyway.

C 61700 49600 1 0 0 spice-directive-1.sym
{
T 61800 49900 5 10 0 1 0 0 1
device=directive
T 61800 50000 5 10 1 1 0 0 1
refdes=A1
T 61700 47400 5 10 1 1 0 0 12
value=.options savecurrents
.control
save all @s1[i] @r1[i]
* tran Tstep Tstop [ Tstart [ Tmax ] ] [ UIC ]
tran 1ms 1s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot vpulse vout
echo "*******************************************************"
echo "* Exit ngspice by pressing Ctrl+D or by typing 'exit' *"
echo "*******************************************************"
.endc
}
T 54700 45700 9 10 1 0 0 0 10
Here are some new ngspice commands:

tran					perform a TRANSIENT analysis.
					The parameters are Tstep (sampling interval)
					and Tstop (when to stop).
set color0=rgb:f/f/f		I like my plots on a clear background
set color1=rgb:0/0/0	and dark ink, please
plot					draw a nice plot instead of giving me ugly numbers on a terminal


L 58600 47500 61500 47800 3 0 0 0 -1 -1
L 61500 47800 61400 47700 3 0 0 0 -1 -1
L 61500 47800 61400 47900 3 0 0 0 -1 -1
T 53500 52500 9 20 1 0 0 0 1
ngspice SWITCH
