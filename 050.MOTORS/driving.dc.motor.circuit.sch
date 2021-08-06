v 20130925 2
C 33300 67200 1 270 0 voltage-3.sym
{
T 34000 67000 5 8 0 1 270 0 1
device=VOLTAGE_SOURCE
T 33800 66800 5 10 1 1 0 0 1
refdes=V1
T 33800 66600 5 10 1 1 0 0 1
value=DC 5V
}
N 33500 66300 33500 66000 4
C 33400 65700 1 0 0 gnd-1.sym
{
T 33300 65700 5 10 1 1 0 0 1
netname=0
}
C 33300 67200 1 0 0 vcc-1.sym
{
T 33400 67600 5 10 0 1 0 0 1
netname=vcc
}
T 34900 69100 9 10 1 0 0 0 1
Step 1: astable oscillator
C 39400 67100 1 90 0 resistor-2.sym
{
T 39100 67800 5 10 1 1 180 0 1
refdes=R3d
T 38800 67500 5 10 1 1 0 0 1
value=1k
}
C 35700 67100 1 90 0 resistor-2.sym
{
T 35400 67900 5 10 1 1 180 0 1
refdes=R1d
T 35100 67500 5 10 1 1 0 0 1
value=1k
}
C 37900 68000 1 270 0 resistor-2.sym
{
T 37500 67700 5 10 1 1 0 0 1
refdes=R2d
T 37500 67500 5 10 1 1 0 0 1
value=10k
}
C 36900 68000 1 270 0 resistor-2.sym
{
T 36500 67700 5 10 1 1 0 0 1
refdes=R4d
T 36500 67500 5 10 1 1 0 0 1
value=10k
}
C 38700 64600 1 0 0 npn-3.sym
{
T 38700 64600 5 10 0 1 0 0 1
model-name=genericNPN
T 38700 64600 5 10 0 0 0 0 1
model=npn
T 39700 65000 5 10 1 1 0 0 1
refdes=Q2d
}
C 36200 64600 1 0 1 npn-3.sym
{
T 36200 64600 5 10 0 0 0 0 1
model-name=genericNPN
T 36200 64600 5 10 0 0 0 0 1
model=npn
T 36400 64700 5 10 1 1 0 6 1
refdes=Q3d
}
N 35600 68400 35600 68000 4
N 39300 68400 39300 68000 4
N 38000 68000 38000 68400 4
N 37000 68000 37000 68400 4
N 35600 64600 35600 64200 4
N 35600 64200 39300 64200 4
N 39300 64200 39300 64600 4
N 37000 67100 37000 66100 4
N 38700 65100 38000 65100 4
N 38000 65100 37000 66100 4
N 38000 67100 38000 66100 4
N 36200 65100 37100 65100 4
N 37100 65100 38000 66100 4
N 35600 68400 39300 68400 4
N 35600 65600 35600 67100 4
N 39300 65600 39300 67100 4
C 36000 65900 1 0 0 capacitor-1.sym
{
T 36200 66400 5 10 1 1 0 0 1
refdes=C1d
T 36000 65900 5 10 1 1 0 0 1
value=10uf
}
C 38200 65900 1 0 0 capacitor-1.sym
{
T 38400 66400 5 10 1 1 0 0 1
refdes=C2d
T 38200 65900 5 10 1 1 0 0 1
value=10uf
}
N 36900 66100 37000 66100 4
N 38200 66100 38000 66100 4
N 36000 66100 35600 66100 4
N 39100 66100 39300 66100 4
C 37200 63900 1 0 0 gnd-1.sym
C 37100 68400 1 0 0 vcc-1.sym
N 40100 66700 39300 66100 4
{
T 40100 66700 5 10 1 1 0 0 1
netname=Vo
}
B 34900 62800 6800 6500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 32300 64500 1 0 0 spice-directive-1.sym
{
T 32400 64800 5 10 0 1 0 0 1
device=directive
T 32400 64900 5 10 1 1 0 0 1
refdes=A1
T 32300 63700 5 10 1 1 0 0 5
value=.control
tran 1ms 1s
set color0=rgb:f/f/f
set color1=rgb:0/0/0
.endc
}
T 35200 63100 9 10 1 0 0 0 4
First thing that comes to mind is to use our old friend the astable oscillator.
Problems: the output waveform is weird, and there is no way to control the 
pulse width without screwing the frequency too.
Of course it can be used but is isn't very efficient.
C 44500 65500 1 0 0 voltage-comparator.sym
{
T 46200 66350 5 10 0 0 0 0 1
device=V_COMPARATOR
T 44800 66400 5 10 1 1 0 0 1
refdes=X1
T 44500 65500 5 10 1 0 0 0 1
graphical=1
}
T 42200 68200 9 10 1 0 0 0 5
Should we use the square wave generator from the Schmitt trigger example?
Also problem: cannot change the impulse width alone independently from the 
frequency.
Solution: use the sawtooth wave generator with a voltage comparator.  
The one from the differential amplifier example will do.
C 43600 64700 1 90 0 pot-bourns.sym
{
T 42700 65500 5 10 0 0 90 0 1
device=VARIABLE_RESISTOR
T 43200 65500 5 10 1 1 180 0 1
refdes=R1a
T 43600 64700 5 10 0 0 0 0 1
graphical=1
}
C 43400 63500 1 0 0 gnd-1.sym
{
T 43300 63500 5 10 1 1 0 0 1
netname=0
}
N 43500 64700 43500 63800 4
N 43000 65200 43000 64700 4
N 43000 64700 43500 64700 4
N 43500 65600 43500 65800 4
N 43500 65800 44500 65800 4
L 42900 66500 43200 66800 3 0 0 0 -1 -1
L 43500 66500 43200 66800 3 0 0 0 -1 -1
L 43500 66500 43800 66800 3 0 0 0 -1 -1
L 44100 66500 43800 66800 3 0 0 0 -1 -1
L 46000 66300 46300 66300 3 0 0 0 -1 -1
L 46300 66300 46300 66800 3 0 0 0 -1 -1
L 46300 66800 46800 66800 3 0 0 0 -1 -1
L 46800 66800 46800 66300 3 0 0 0 -1 -1
L 46800 66300 47100 66300 3 0 0 0 -1 -1
L 47100 66300 47100 66800 3 0 0 0 -1 -1
L 47100 66800 47600 66800 3 0 0 0 -1 -1
L 47600 66800 47600 66300 3 0 0 0 -1 -1
L 47600 66300 47900 66300 3 0 0 0 -1 -1
N 44500 66200 44300 66500 4
{
T 44200 66600 5 10 1 1 0 0 1
netname=in
}
N 45600 66000 45800 66300 4
{
T 45700 66400 5 10 1 1 0 0 1
netname=out
}
B 42000 62800 6800 6500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 42800 65700 9 10 1 0 0 0 2
reference
voltage
