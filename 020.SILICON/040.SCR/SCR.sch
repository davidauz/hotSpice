v 20130925 2
C 50400 56600 1 0 0 vcc-1.sym
C 50500 55400 1 0 0 gnd-1.sym
{
T 50500 55400 5 10 0 0 0 0 1
netname=0
}
C 50400 56600 1 270 0 voltage-3.sym
{
T 51100 56400 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 50900 56200 5 10 1 1 0 0 1
refdes=V1
T 50900 56000 5 10 1 1 0 0 1
value=DC 20
}
C 56800 55200 1 0 0 spice-directive-1.sym
{
T 56900 55500 5 10 0 1 0 0 1
device=directive
T 56900 55600 5 10 1 1 0 0 1
refdes=A1
T 56800 53900 5 10 1 1 0 0 8
value=.options savecurrents
.control
save all
tran 1ms 2s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot @rload[i]  @rlat[i]
.endc
}
T 48800 58300 9 10 1 0 0 0 12
ngspice does not have a model for the SCR.
Without entering into the structure and functioning of the component, let it be sufficient to say that 
even the constructors give out equivalent circuits like the one below.
Actually this is taken verbatim from one of the equivalent circuits given by the fine folks from littelfuse:
https://www.littelfuse.com/technical-resources_old/spice-models/thyristor-spice-models.aspx

The bottom line is that when no current is flowing into the gate, the thyristor is switched off and no current flows between the anode and the cathode.
When a current flows into the gate, it turns on the NPN transistor.
Then the current flowing into the NPN transistor activates the PNP transistor too.
When both transistors are saturated, current flows through both of them, from the anode to the cathode.
As long as both transistors keep one another switched on, the thyristor stays on even if the gate current is removed.
When the current from Anode to Cathode stops, even for qa brief instant, the component goes back to square one, i.e. it does not conduct.
C 54900 53700 1 0 0 npn-3.sym
{
T 55800 54200 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 54900 53700 5 10 0 1 0 0 1
model-name=Nfor
T 55300 54200 5 10 1 1 0 0 1
refdes=Qnpn
T 54900 53700 5 10 0 0 0 0 1
model=IS=1E-12     ISE=1E-9  BF=10.0    RC=0.45    CJE=30p     CJC=2p      TF=0.3U
}
C 53200 55900 1 180 0 pnp-3.sym
{
T 52300 55400 5 10 0 0 180 0 1
device=PNP_TRANSISTOR
T 52800 55500 5 10 1 1 180 0 1
refdes=Qpnp
T 53200 55900 5 10 0 0 180 0 1
model-name=Pfor
T 53200 55900 5 10 0 0 180 0 1
model=IS=5E-15     BF=6.10   CJE=5p     CJC=2p     TF=0.3U
}
N 53200 55400 55500 55400 4
N 55500 55400 55500 54700 4
N 52600 52400 52600 54900 4
N 52600 54200 54900 54200 4
N 52600 57200 55700 57200 4
C 51100 54100 1 0 0 resistor-2.sym
{
T 51500 54450 5 10 0 0 0 0 1
device=RESISTOR
T 51700 54000 5 10 1 1 180 0 1
value=9.09
T 51600 54500 5 10 1 1 180 0 1
refdes=Rlat
}
N 52000 54200 52600 54200 4
N 49900 54200 51100 54200 4
C 49700 53800 1 270 0 voltage-3.sym
{
T 50400 53600 5 8 0 0 270 0 1
device=VOLTAGE_SOURCE
T 50200 53400 5 10 1 1 0 0 1
value=PULSE(0 15 .5 1m 1m 1m)
T 49700 53800 5 10 0 0 0 0 1
comment=initial V, pulsed V, delay t, rise t, fall t, pulse width,period
T 50200 53100 5 10 1 1 0 0 1
refdes=VSIGNAL
}
N 49900 53800 49900 54200 4
C 49800 52600 1 0 0 gnd-1.sym
{
T 49800 52600 5 10 0 0 0 0 1
netname=0
}
N 53600 56600 53600 57200 4
N 53600 55700 53600 55400 4
N 53600 55400 53600 55100 4
N 54400 54400 54400 54200 4
N 54400 55300 54400 55400 4
N 54400 55400 54400 55700 4
N 54400 56600 54400 57200 4
N 52600 55900 52600 57200 4
C 54500 52500 1 180 0 resistor-2.sym
{
T 54100 52150 5 10 0 0 180 0 1
device=RESISTOR
T 54200 52200 5 10 1 1 180 0 1
value=1Meg
T 54100 52700 5 10 1 1 180 0 1
refdes=Rshort
}
N 53600 52400 52600 52400 4
T 52500 57300 9 10 1 0 0 0 1
4(2)
N 54500 52400 55800 52400 4
N 55500 52400 55500 53700 4
C 54300 56600 1 270 0 resistor-2.sym
{
T 54650 56200 5 10 0 0 270 0 1
device=RESISTOR
T 54800 56200 5 10 1 1 180 0 1
value=5G
T 55000 56500 5 10 1 1 180 0 1
refdes=Rrev
}
C 54300 55300 1 270 0 resistor-2.sym
{
T 54650 54900 5 10 0 0 270 0 1
device=RESISTOR
T 54900 54900 5 10 1 1 180 0 1
value=5G
T 54900 55100 5 10 1 1 180 0 1
refdes=Rfor
}
C 53400 56600 1 270 0 diode-1.sym
{
T 54000 56200 5 10 0 0 270 0 1
device=DIODE
T 52900 56200 5 10 1 1 0 0 1
refdes=Drev
T 53400 56600 5 10 0 0 180 0 1
model-name=Zbrk
T 53400 56600 5 10 0 0 0 0 1
model=IS=3.2E-16   IBV=100U  BV=400
}
C 53800 54200 1 90 0 diode-1.sym
{
T 53200 54600 5 10 0 0 90 0 1
device=DIODE
T 53300 54900 5 10 1 1 180 0 1
refdes=Dfor
T 53800 54200 5 10 0 0 0 0 1
model-name=Zbrk
T 53800 54200 5 10 0 0 180 0 1
model=IS=3.2E-16   IBV=100U  BV=400
}
C 53600 53600 1 180 1 diode-1.sym
{
T 54000 53000 5 10 0 0 180 6 1
device=DIODE
T 54200 53000 5 10 1 1 0 6 1
refdes=Dgate
T 53600 53600 5 10 0 0 90 2 1
model-name=Zgate
T 53600 53600 5 10 0 0 270 2 1
model=IS=1E-16     IBV=100U  BV=10      VJ=0.3
}
N 54500 53400 55500 53400 4
N 53600 53400 52600 53400 4
C 55800 52300 1 0 0 resistor-2.sym
{
T 56200 52650 5 10 0 0 0 0 1
device=RESISTOR
T 56400 52200 5 10 1 1 180 0 1
value=0.05
T 56300 52700 5 10 1 1 180 0 1
refdes=Ron
}
C 57500 52100 1 0 0 gnd-1.sym
{
T 57500 52100 5 10 0 0 0 0 1
netname=0
}
N 57600 52400 56700 52400 4
C 56600 57300 1 180 0 resistor-2.sym
{
T 56200 56950 5 10 0 0 180 0 1
device=RESISTOR
T 56100 57000 5 10 1 1 180 0 1
value=10
T 56500 57500 5 10 1 1 180 0 1
refdes=RLOAD
}
C 56700 57300 1 0 0 vcc-1.sym
T 48800 60900 9 10 1 0 0 0 7
Some of the parameters to keep an eye on from the data sheet:

1. VBO (Forward breakover voltage) is the voltage causes SCR to start conducting without no gate current. Or, The maximum voltage that SCR can tolerate.
2. IFmax (Maximum forward current)is maximum currents can flow in SCR without damage to the SCR.
3. IGTmin (Minimum gate triggering current) is the minimum gate current that can trigger the SCR.
4. IH(Holding current) is the lowest current that flows through A-K. That can keep on SCR works.
5. VB (Peak reverse voltage) is the return voltage that will fit the SCR Can break down
T 48700 62300 9 10 1 0 0 0 13
SCR stands for: Silicon Controlled Thyristors
This is only one from a large family of components, among which:

 - Emitter turn off Thyristors (ETO)
 - Fast Switching Thyristors (SCR)
 - Light Activated Silicon Controlled Rectifiers (LASCR)
 - Gate Turn Off Thyristors (GTO)
 - Reverse Conducting Thyristors (RCT)
 - FET Controlled Thyristors (FET-CTH)
 - MOS Turn Off Thyristors (MTO)
 - Bidirectional Phase Controlled Thyristors (BCT)
 - AGT (anode gate thyristor) 

N 56900 57300 56900 57200 4
N 56900 57200 56600 57200 4
T 55300 52100 9 10 1 0 0 0 1
2(4)
T 52500 52200 9 10 1 0 0 0 1
3
T 55500 55400 9 10 1 0 0 0 1
1
T 49800 54300 9 10 1 0 0 0 1
5
